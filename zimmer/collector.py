from __future__ import division, print_function, absolute_import
import numpy as np
import csv

class Collector:
    def __init__(self, model, selections, noise_var, should_round=True, var_step=True):
        self.model = model
        self.selections = selections
        self.noise_var = noise_var
        self.should_round = should_round
        self.var_step = var_step
        if self.should_round:
            self.round = round
        else:
            self.round = lambda x: x

    def collect_selections(self, time, sim):
        ''' Collects the selections at the current time.
        Returns 1D array.
        '''
        if sim.shape[0] < 1:
            raise RuntimeError('Not enough rows')

        result = np.zeros(len(self.selections)+1)
        result[0] = time

        for r in range(sim.shape[0]-1):
            t1 = sim[r,0]
            t2 = sim[r+1,0]
            if t2 > time:
                #print('collect at {}'.format(t1))
                for k,s in enumerate(self.selections, start=1):
                    result[k] = self.round(sim[r,k])
                if self.noise_var > 0:
                    result[1:] += np.random.normal(0., self.noise_var, len(self.selections))
                return result

    def __call__(self, times, tend, seed, npoints=None):
        ''' Collect the data points.

        times: list of times
        selections: list of rr selections
        noise_var: variance of synthetic noise to add to y-values
        should_round: if true, will round to integers

        returns: a matrix with the time values and selected y-values
        '''
        self.model.integrator = 'gillespie'
        self.model.integrator.variable_step_size = self.var_step
        self.model.resetAll()
        self.model.integrator.seed = seed
        if npoints is None:
            sim = self.model.simulate(0,tend)
        else:
            sim = self.model.simulate(0,tend,npoints)

        length = len(times)

        result = np.zeros((length,1+len(self.selections)))

        for k,t in enumerate(times):
            result[k,:] = self.collect_selections(t, sim)

        return result

    def writeCSV(self, filename, datapoints):
        with open(filename, 'w') as csvfile:
            writer = csv.writer(csvfile, delimiter=',', quotechar='|', quoting=csv.QUOTE_MINIMAL)
            writer.writerow(['time']+self.selections)
            for k in range(datapoints.shape[0]):
                writer.writerow(datapoints[k,:])
