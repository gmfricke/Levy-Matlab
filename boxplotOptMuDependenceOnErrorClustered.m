mus = [1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 3.0];
errorLevel = [0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 0.875];

% Read the experiment data (rows are replicates, columns correspond to mu values)
Error0Clustered = table2array(Searchers8SensorError0RateBounds40x40Clustered)
% Find the best performing experiment for each set of repicates
bestError0Clustered = max(Error0Clustered,[],2);
% Get the mu for that experiment (assumes the columns are in the order of mu values in mus above)
bestMusForError0Clustered = zeros(length(bestError0Clustered),1);
for i = 1:length(bestError0Clustered)
    mask = find(Error0Clustered(i,:)==bestError0Clustered(i))
    mask = mask(end)
    bestMuForError0Clustered(i) = mus(mask)
end

% Read the experiment data (rows are replicates, columns correspond to mu values)
Error0125Clustered = table2array(Searchers8SensorError0125RateBounds40x40Clustered)
% Find the best performing experiment for each set of repicates
bestError0125Clustered = max(Error0125Clustered,[],2);
% Get the mu for that experiment (assumes the columns are in the order of mu values in mus above)
bestMusForError0125Clustered = zeros(length(bestError0125Clustered),1);
for i = 1:length(bestError0125Clustered)
    mask = find(Error0125Clustered(i,:)==bestError0125Clustered(i))
    mask = mask(end)
    bestMuForError0125Clustered(i) = mus(mask)
end

% Read the experiment data (rows are replicates, columns correspond to mu values)
Error025Clustered = table2array(Searchers8SensorError025RateBounds40x40Clustered)
% Find the best performing experiment for each set of repicates
bestError025Clustered = max(Error025Clustered,[],2);
% Get the mu for that experiment (assumes the columns are in the order of mu values in mus above)
bestMusForError025Clustered = zeros(length(bestError025Clustered),1);
for i = 1:length(bestError025Clustered)
    mask = find(Error025Clustered(i,:)==bestError025Clustered(i))
    mask = mask(end)
    bestMuForError025Clustered(i) = mus(mask)
end

% Read the experiment data (rows are replicates, columns correspond to mu values)
Error0375Clustered = table2array(Searchers8SensorError0375RateBounds40x40Clustered)
% Find the best performing experiment for each set of repicates
bestError0375Clustered = max(Error0375Clustered,[],2);
% Get the mu for that experiment (assumes the columns are in the order of mu values in mus above)
bestMusForError0375Clustered = zeros(length(bestError0375Clustered),1);
for i = 1:length(bestError0375Clustered)
    mask = find(Error0375Clustered(i,:)==bestError0375Clustered(i))
    mask = mask(end)
    bestMuForError0375Clustered(i) = mus(mask)
end

% Read the experiment data (rows are replicates, columns correspond to mu values)
Error05Clustered = table2array(Searchers8SensorError05RateBounds40x40Clustered)
% Find the best performing experiment for each set of repicates
bestError05Clustered = max(Error05Clustered,[],2);
% Get the mu for that experiment (assumes the columns are in the order of mu values in mus above)
bestMusForError05Clustered = zeros(length(bestError05Clustered),1);
for i = 1:length(bestError05Clustered)
    mask = find(Error05Clustered(i,:)==bestError05Clustered(i))
    mask = mask(end)
    bestMuForError05Clustered(i) = mus(mask)
end

% Read the experiment data (rows are replicates, columns correspond to mu values)
Error0625Clustered = table2array(Searchers8SensorError0625RateBounds40x40Clustered)
% Find the best performing experiment for each set of repicates
bestError0625Clustered = max(Error0625Clustered,[],2);
% Get the mu for that experiment (assumes the columns are in the order of mu values in mus above)
bestMusForError0625Clustered = zeros(length(bestError0625Clustered),1);
for i = 1:length(bestError0625Clustered)
    mask = find(Error0625Clustered(i,:)==bestError0625Clustered(i))
    mask = mask(end)
    bestMuForError0625Clustered(i) = mus(mask)
end

% Read the experiment data (rows are replicates, columns correspond to mu values)
Error075Clustered = table2array(Searchers8SensorError075RateBounds40x40Clustered)
% Find the best performing experiment for each set of repicates
bestError075Clustered = max(Error075Clustered,[],2);
% Get the mu for that experiment (assumes the columns are in the order of mu values in mus above)
bestMusForError075Clustered = zeros(length(bestError075Clustered),1);
for i = 1:length(bestError075Clustered)
    mask = find(Error075Clustered(i,:)==bestError075Clustered(i))
    mask = mask(end)
    bestMuForError075Clustered(i) = mus(mask)
end

% Read the experiment data (rows are replicates, columns correspond to mu values)
Error0875Clustered = table2array(Searchers8SensorError0875RateBounds40x40Clustered)
% Find the best performing experiment for each set of repicates
bestError0875Clustered = max(Error0875Clustered,[],2);
% Get the mu for that experiment (assumes the columns are in the order of mu values in mus above)
bestMusForError0875Clustered = zeros(length(bestError0875Clustered),1);
for i = 1:length(bestError0875Clustered)
    mask = find(Error0875Clustered(i,:)==bestError0875Clustered(i))
    mask = mask(end)
    bestMuForError0875Clustered(i) = mus(mask)
end


bestMusClustered = [bestMuForError0Clustered'... 
                    bestMuForError0125Clustered'...
                    bestMuForError025Clustered'...
                    bestMuForError0375Clustered'...
                    bestMuForError05Clustered'...
                    bestMuForError0625Clustered'...
                    bestMuForError075Clustered'...
                    bestMuForError0875Clustered'...
                    ]

hold on
boxplot(bestMusClustered,'boxstyle','outline', 'labels', textscan(num2str(errorLevel),'%s'))
plot(mean(bestMusClustered), 'ko')
xlabel('Error rate per second')
ylabel('\mu')
title('Clustered');
hold off