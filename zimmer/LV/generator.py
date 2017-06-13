from __future__ import division, print_function, absolute_import

import tellurium as te, numpy as np
from collector import Collector

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

# more sparse
#times = [0., 5., 10., 15., 20., 25., 30., 40., 50., 60., 80., 100.]
# more dense
times = np.linspace(0,100,50)
seed = 5

c = Collector(LVModel, ['A','B'], noise_var=10., should_round=True)
datapoints = c(times, seed)

c.writeCSV('lv-dense-noisy10.csv', datapoints)

# plot the traces
LVModel.integrator = 'gillespie'
LVModel.integrator.variable_step_size = False
LVModel.resetAll()
LVModel.integrator.seed = 5
LVModel.simulate(0,100,10000)
LVModel.plot(show=False)

import matplotlib.pyplot as plt

plt.plot(datapoints[:,0], datapoints[:,1], label='A', marker='x', linestyle='None')
plt.plot(datapoints[:,0], datapoints[:,2], label='B', marker='*', linestyle='None')
plt.show()