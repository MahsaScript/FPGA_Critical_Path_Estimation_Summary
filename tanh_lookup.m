function []=tanh_lookup()
    problem = FunctionApproximation.Problem('tanh');
    problem.InputTypes =  numerictype(1,16,12);
    problem.InputLowerBounds = -8;
    problem.InputUpperBounds = 8;
    problem.OutputType = numerictype(1,16,15);
    problem.Options.BreakpointSpecification='EvenSpacing';
    problem.Options.WordLengths=[8,16,32];
    problem.Options.OnCurveTableValues=0;
    solution = solve(problem);
    compare(solution);
    approximate(solution);
end