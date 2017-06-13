from __future__ import division, print_function, absolute_import
import numpy as np
from math import sqrt

class Collector:
    def __init__(self, model, selections, noise_var, should_round=True):
        self.model = model
        self.selections = selections
        self.noise_var = noise_var
        self.should_round = should_round
        if self.should_round:
            self.round = round
        else:
            self.round = lambda x: x

    def collect_selections(self, time):
        ''' Collects the selections at the current time.
        Returns 1D array.
        '''
        result = np.zeros(len(self.selections)+1)
        result[0] = time
        for k,s in enumerate(self.selections, start=1):
            result[k] = self.round(self.model['[{}]'.format(s)])
        if self.noise_var > 0:
            result[1:] += np.random.normal(0., sqrt(noise_var), len(self.selections))
        return result

    def __call__(self, times, seed):
        ''' Collect the data points.

        times: list of times
        selections: list of rr selections
        noise_var: variance of synthetic noise to add to y-values
        should_round: if true, will round to integers

        returns: a matrix with the time values and selected y-values
        '''
        self.model.integrator = 'gillespie'
        self.model.integrator.variable_step_size = False
        self.model.resetAll()
        self.model.integrator.seed = seed

        length = len(times)

        result = np.zeros((length,1+len(self.selections)))

        for k,t in enumerate(times):
            if t != 0:
                self.model.resetAll()
                self.model.integrator.seed = seed
                self.model.simulate(0,t,int(t*100+1))
            result[k,:] = self.collect_selections(t)

        return result