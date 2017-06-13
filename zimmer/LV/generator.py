import tellurium as te
import numpy as np
from math import sqrt

# Load the Lotka-Volterra model
LVModel = te.loada('''
model *LVModel()
  // Compartments and Species:
  compartment compartment_;
  species A in compartment_, B in compartment_;

  // Reactions:
  R1: A => 2A; compartment_*R1_k1*A;
  R2: A => B; compartment_*A*B*R2_p;
  R4: B => ; compartment_*R4_k1*B;

  // Species initializations:
  A = 71;
  B = 79;

  // Compartment initializations:
  compartment_ = 1;

  // Variable initializations:
  R1_k1 = 0.5;
  R2_p = 0.0025;
  R4_k1 = 0.3;

  // Other declarations:
  const compartment_;

  // Unit definitions:
  unit volume = 1e-3 litre;
  unit substance = item;
end
''')

class collector:
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
        self.model.integrator.seed = seed
        self.model.integrator.variable_step_size = False
        self.model.resetAll()

        length = len(times)

        result = np.zeros((length,1+len(self.selections)))

        for k,t in enumerate(times):
            if t != 0:
                self.model.resetAll()
                self.model.integrator.seed = seed
                self.model.simulate(0,t,int(t*10+1))
            result[k,:] = self.collect_selections(t)

        return result

times = [0., 5., 10., 15., 20., 25., 30., 40., 50., 60.]
seed = 1234

c = collector(LVModel, ['A','B'], noise_var=0., should_round=True)
datapoints = c(times, seed)

# plot the traces
LVModel.integrator = 'gillespie'
LVModel.integrator.seed = seed
LVModel.integrator.variable_step_size = False
LVModel.resetAll()
LVModel.simulate(0,100,100)
LVModel.plot()