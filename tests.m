pkg load statistics

addpath('support')
test support/power_expansion;
test support/integrate;

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
test quasirandom_sequences/hammersley_point_set;
test quasirandom_sequences/sobol_point;
test quasirandom_sequences/sobol_sequence;
test quasirandom_sequences/faure_sequence;

addpath('monte_carlo_integration')
test monte_carlo_integration/naive_mcm;
test monte_carlo_integration/symmetric_mcm;
test monte_carlo_integration/stratified_mcm;
test monte_carlo_integration/quasi_mcm;
