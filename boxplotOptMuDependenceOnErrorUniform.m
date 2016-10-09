mus = [1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 3.0];
errorLevel = [0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 0.875];

% Read the experiment data (rows are replicates, columns correspond to mu values)
Error0Uniform = table2array(Searchers8SensorError0RateBounds40x40Uniform)
% Find the best performing experiment for each set of repicates
bestError0Uniform = max(Error0Uniform,[],2);
% Get the mu for that experiment (assumes the columns are in the order of mu values in mus above)
bestMusForError0Uniform = zeros(length(bestError0Uniform),1);
for i = 1:length(bestError0Uniform)
    mask = find(Error0Uniform(i,:)==bestError0Uniform(i))
    mask = mask(end)
    bestMuForError0Uniform(i) = mus(mask)
end

% Read the experiment data (rows are replicates, columns correspond to mu values)
Error0125Uniform = table2array(Searchers8SensorError0125RateBounds40x40Uniform)
% Find the best performing experiment for each set of repicates
bestError0125Uniform = max(Error0125Uniform,[],2);
% Get the mu for that experiment (assumes the columns are in the order of mu values in mus above)
bestMusForError0125Uniform = zeros(length(bestError0125Uniform),1);
for i = 1:length(bestError0125Uniform)
    mask = find(Error0125Uniform(i,:)==bestError0125Uniform(i))
    mask = mask(end)
    bestMuForError0125Uniform(i) = mus(mask)
end

% Read the experiment data (rows are replicates, columns correspond to mu values)
Error025Uniform = table2array(Searchers8SensorError025RateBounds40x40Uniform)
% Find the best performing experiment for each set of repicates
bestError025Uniform = max(Error025Uniform,[],2);
% Get the mu for that experiment (assumes the columns are in the order of mu values in mus above)
bestMusForError025Uniform = zeros(length(bestError025Uniform),1);
for i = 1:length(bestError025Uniform)
    mask = find(Error025Uniform(i,:)==bestError025Uniform(i))
    mask = mask(end)
    bestMuForError025Uniform(i) = mus(mask)
end

% Read the experiment data (rows are replicates, columns correspond to mu values)
Error0375Uniform = table2array(Searchers8SensorError0375RateBounds40x40Uniform)
% Find the best performing experiment for each set of repicates
bestError0375Uniform = max(Error0375Uniform,[],2);
% Get the mu for that experiment (assumes the columns are in the order of mu values in mus above)
bestMusForError0375Uniform = zeros(length(bestError0375Uniform),1);
for i = 1:length(bestError0375Uniform)
    mask = find(Error0375Uniform(i,:)==bestError0375Uniform(i))
    mask = mask(end)
    bestMuForError0375Uniform(i) = mus(mask)
end

% Read the experiment data (rows are replicates, columns correspond to mu values)
Error05Uniform = table2array(Searchers8SensorError05RateBounds40x40Uniform)
% Find the best performing experiment for each set of repicates
bestError05Uniform = max(Error05Uniform,[],2);
% Get the mu for that experiment (assumes the columns are in the order of mu values in mus above)
bestMusForError05Uniform = zeros(length(bestError05Uniform),1);
for i = 1:length(bestError05Uniform)
    mask = find(Error05Uniform(i,:)==bestError05Uniform(i))
    mask = mask(end)
    bestMuForError05Uniform(i) = mus(mask)
end

% Read the experiment data (rows are replicates, columns correspond to mu values)
Error0625Uniform = table2array(Searchers8SensorError0625RateBounds40x40Uniform)
% Find the best performing experiment for each set of repicates
bestError0625Uniform = max(Error0625Uniform,[],2);
% Get the mu for that experiment (assumes the columns are in the order of mu values in mus above)
bestMusForError0625Uniform = zeros(length(bestError0625Uniform),1);
for i = 1:length(bestError0625Uniform)
    mask = find(Error0625Uniform(i,:)==bestError0625Uniform(i))
    mask = mask(end)
    bestMuForError0625Uniform(i) = mus(mask)
end

% Read the experiment data (rows are replicates, columns correspond to mu values)
Error075Uniform = table2array(Searchers8SensorError075RateBounds40x40Uniform)
% Find the best performing experiment for each set of repicates
bestError075Uniform = max(Error075Uniform,[],2);
% Get the mu for that experiment (assumes the columns are in the order of mu values in mus above)
bestMusForError075Uniform = zeros(length(bestError075Uniform),1);
for i = 1:length(bestError075Uniform)
    mask = find(Error075Uniform(i,:)==bestError075Uniform(i))
    mask = mask(end)
    bestMuForError075Uniform(i) = mus(mask)
end

% Read the experiment data (rows are replicates, columns correspond to mu values)
Error0875Uniform = table2array(Searchers8SensorError0875RateBounds40x40Uniform)
% Find the best performing experiment for each set of repicates
bestError0875Uniform = max(Error0875Uniform,[],2);
% Get the mu for that experiment (assumes the columns are in the order of mu values in mus above)
bestMusForError0875Uniform = zeros(length(bestError0875Uniform),1);
for i = 1:length(bestError0875Uniform)
    mask = find(Error0875Uniform(i,:)==bestError0875Uniform(i))
    mask = mask(end)
    bestMuForError0875Uniform(i) = mus(mask)
end


bestMusUniform = [bestMuForError0Uniform'... 
                    bestMuForError0125Uniform'...
                    bestMuForError025Uniform'...
                    bestMuForError0375Uniform'...
                    bestMuForError05Uniform'...
                    bestMuForError0625Uniform'...
                    bestMuForError075Uniform'...
                    bestMuForError0875Uniform'...
                    ]

hold on
boxplot(bestMusUniform,'boxstyle','outline', 'labels', textscan(num2str(errorLevel),'%s'))
plot(mean(bestMusUniform),'ko')
xlabel('Error rate per second')
ylabel('\mu')
title('Uniform');
hold off