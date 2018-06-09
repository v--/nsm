pkg load statistics

addpath('support')

addpath('matlab_introduction/01.03.2018')
test matlab_introduction/01.03.2018/exercise_1;
test matlab_introduction/01.03.2018/exercise_2;
test matlab_introduction/01.03.2018/exercise_3;
test matlab_introduction/01.03.2018/exercise_4;
test matlab_introduction/01.03.2018/exercise_5;
test matlab_introduction/01.03.2018/exercise_6;
test matlab_introduction/01.03.2018/exercise_7;
test matlab_introduction/01.03.2018/exercise_8;
test matlab_introduction/01.03.2018/exercise_11;
test matlab_introduction/01.03.2018/exercise_12;
test matlab_introduction/01.03.2018/exercise_13;
test matlab_introduction/01.03.2018/exercise_14;
test matlab_introduction/01.03.2018/exercise_15;
test matlab_introduction/01.03.2018/exercise_16;
test matlab_introduction/01.03.2018/exercise_17;
test matlab_introduction/01.03.2018/exercise_18;

addpath('matlab_introduction/15.03.2018')
test matlab_introduction/15.03.2018/herons_formula;
test matlab_introduction/15.03.2018/fib_sequence_iter;
test matlab_introduction/15.03.2018/fib_sequence_rec;
test matlab_introduction/15.03.2018/fib_scalar_iter;
test matlab_introduction/15.03.2018/fib_scalar_matrices;
test matlab_introduction/15.03.2018/benchmark_fibonacci;

addpath('matlab_introduction/29.03.2018')
test matlab_introduction/29.03.2018/exercise_2;

addpath('pseudorandom_generators')
test pseudorandom_generators/naive_generator;
test pseudorandom_generators/von_neumann_generator;
test pseudorandom_generators/linear_congruential_generator;
test pseudorandom_generators/linear_feedback_shift_generator;
test pseudorandom_generators/additive_fibonacci_generator;
test pseudorandom_generators/multiplicative_fibonacci_generator;

addpath('discrete_rv_simulation')
test discrete_rv_simulation/naive_discrete_simulation;
test discrete_rv_simulation/naive_discrete_uniform_simulation;
test discrete_rv_simulation/choice_without_return_simulation;
test discrete_rv_simulation/modified_choice_without_return_simulation;
test discrete_rv_simulation/choice_with_return_simulation;

addpath('continuous_rv_simulation')
test continuous_rv_simulation/inverse_function_simulation;
test continuous_rv_simulation/rejection_simulation;
test continuous_rv_simulation/box_muller_simulation;

addpath('quasirandom_sequences')
test quasirandom_sequences/weyl_sequence;
test quasirandom_sequences/halton_sequence;
test quasirandom_sequences/sobol_point;
test quasirandom_sequences/sobol_sequence;

addpath('monte_carlo_integration')
test monte_carlo_integration/naive_mcm;
test monte_carlo_integration/naive_qmcm;
test monte_carlo_integration/symmetric_mcm;
test monte_carlo_integration/symmetric_qmcm;
