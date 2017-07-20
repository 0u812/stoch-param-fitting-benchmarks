from __future__ import division, print_function, absolute_import

import tellurium as te, numpy as np
te.__default_plotting_engine = 'matplotlib'
import sys, os
sys.path.append(os.path.join(os.path.dirname(__file__), '..'))
from collector import Collector

# Load the Lotka-Volterra model
IDModel = te.loada('''
model *IDModel()

  // Compartments and Species:
  compartment compartment_;
  species A in compartment_;

  // Reactions:
  R1:  => A; compartment_*p1;
  R2: A => ; compartment_*p2*A;

  // Species initializations:
  A = 10;

  // Compartment initializations:
  compartment_ = 1;

  // Variable initializations:
  p1 = 1;
  p2 = 0.1;

  // Other declarations:
  const compartment_, p1, p2;

  // Unit definitions:
  unit volume = 1e-3 litre;
  unit substance = item;
end
''')

# for noise in [0., 10., 25., 100.]:
for noise in [0.]:
    # more sparse
    sparse_times = [0., 5., 10., 15., 20., 25., 30., 40., 50., 60., 80., 100.]
    # more dense
    dense_times = np.linspace(0,100,50)

    tend = 100.
    seed = 5

    for times in [dense_times]:
        c = Collector(IDModel, ['A'], noise_var=noise, should_round=True)
        datapoints = c(times, tend, seed)

        #c.writeCSV('id-dense-noisy10.csv', datapoints)

        # plot the traces
        IDModel.integrator = 'gillespie'
        IDModel.integrator.variable_step_size = True
        IDModel.resetAll()
        IDModel.integrator.seed = seed
        IDModel.simulate(0,100)
        IDModel.plot(show=False)

        import matplotlib.pyplot as plt

        plt.plot(datapoints[:,0], datapoints[:,1], label='A', marker='x', linestyle='None')
        plt.show()
