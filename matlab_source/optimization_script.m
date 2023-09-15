clear all

% Number of points
N=4;

% Initial guess for the coordinates
% initialGuess = ones(3 * N, 1) / 3;
% initialGuess = randi([0,100],3 * N,1,'double')/100;
initialGuess = [0.99,0.01,0.01; 0.01,0.99,0.01; 0.01,0.01,0.9   9; 1/3,1/3,1/3]

% Define the constraints
Aeq = kron(eye(N), [1, 1, 1]);
% Vector that represents luminous flux is 1 for all symbols
beq = ones(N, 1);
% Vector for non-negative condition
lb = zeros(3 * N, 1);

% Define the objective function (negative minimum pairwise distance)
objective = @(xyz) -minPairwiseDistance(xyz, N);

% Use fmincon to solve the optimization problem
options = optimoptions('fmincon', 'Display', 'iter');
[xyzOptimal, objectiveValue] = fmincon(objective, initialGuess, [], [], Aeq, beq, lb, [], [], options);

% Display the optimal solution
disp('Optimal Coordinates:');
disp(reshape(xyzOptimal, 3, N)');
disp(['Optimal Minimum Pairwise Distance: ', num2str(-objectiveValue)]);


function distance = minPairwiseDistance(xyz, N)
    distance = inf;
    for i = 1:N
        for j = i+1:N
            d = norm(xyz(3*i-2:3*i) - xyz(3*j-2:3*j));
            if d < distance
                distance = d;
            end
        end
    end
end