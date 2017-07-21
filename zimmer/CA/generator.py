from __future__ import division, print_function, absolute_import

import tellurium as te, numpy as np
te.__default_plotting_engine = 'matplotlib'
import sys, os
sys.path.append(os.path.join(os.path.dirname(__file__), '..'))
from collector import Collector

# Load the Lotka-Volterra model
CAModel = te.loada('''
// Created by libAntimony v2.9.3
function Constant_flux__irreversible(v)
  v;
end

function Henri_Michaelis_Menten__irreversible(substrate, Km, V)
  V*substrate/(Km + substrate);
end

function Rate_Law_for_a3(k3, A, B, k4)
  k3*A*B/(A + k4);
end

function Rate_Law_A(k2, G)
  k2*G;
end

model *camodel()

  // Compartments and Species:
  compartment compartment_;
  species G in compartment_, PLC in compartment_, Ca in compartment_;

  // Reactions:
  constG:  => G; compartment_*Constant_flux__irreversible(constG_v);
  mlG:  => G; compartment_*Rate_Law_A(mlG_k2, G);
  mlP:  => PLC; compartment_*Rate_Law_A(mlP_k2, G);
  mlCa:  => Ca; compartment_*Rate_Law_A(mlCa_k2, G);
  a3: G => ; compartment_*Rate_Law_for_a3(a3_k3, G, PLC, a3_k4);
  a4: G => ; compartment_*Rate_Law_for_a3(a4_k3, G, Ca, a4_k4);
  b2: PLC => ; compartment_*Henri_Michaelis_Menten__irreversible(PLC, b2_Km, b2_V);
  b3: Ca => ; compartment_*Henri_Michaelis_Menten__irreversible(Ca, b3_Km, b3_V);

  // Species initializations:
  G = 10;
  PLC = 10;
  Ca = 10;

  // Compartment initializations:
  compartment_ = 1;

  // Variable initializations:
  constG_v = 212;
  mlG_k2 = 2.85;
  mlP_k2 = 1.24;
  mlCa_k2 = 13.58;
  a3_k3 = 1.52;
  a3_k4 = 190;
  a4_k3 = 4.88;
  a4_k4 = 1180;
  b2_Km = 29090;
  b2_V = 32240;
  b3_Km = 160;
  b3_V = 153000;

  // Other declarations:
  const compartment_;

  // Unit definitions:
  unit volume = 1e-3 litre;
  unit substance = item;

  // Display Names:
  b3 is "b3 ";
end
''')

# for noise in [0., 10., 25., 100.]:
for noise in [0.,10.,100.,500.,1000.]:
    tend = 100.

    # more sparse
    sparse_times = [0., 5., 10., 15., 20., 25., 30., 40., 50., 60., 80., 100.]
    # more dense
    dense_times = np.linspace(0,tend,50)

    seed = 5

    for timestr,times in zip(['dense','sparse'], [dense_times, sparse_times]):
        c = Collector(CAModel, ['G','PLC','Ca'], noise_var=noise, should_round=True, var_step=False)
        datapoints = c(times, tend, seed, 1000)

        c.writeCSV('ca-{}-noise-{}.csv'.format(timestr,noise), datapoints)

        # plot the traces
        CAModel.integrator = 'gillespie'
        CAModel.integrator.variable_step_size = False
        CAModel.resetAll()
        CAModel.integrator.seed = seed
        CAModel.simulate(0,tend,1000)
        #CAModel.plot(show=False)

        import matplotlib.pyplot as plt

        plt.plot(datapoints[:,0], datapoints[:,1], label='G',   marker='x', linestyle='None')
        plt.plot(datapoints[:,0], datapoints[:,2], label='PLC', marker='*', linestyle='None')
        plt.plot(datapoints[:,0], datapoints[:,3], label='Ca',  marker='o', linestyle='None')
        #plt.show()
