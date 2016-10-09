mus = [1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 3.0];
errorLevel = [0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 0.875];

% Read the experiment data (rows are replicates, columns correspond to mu values)
Error0PowerLaw = table2array(Searchers8SensorError0RateBounds40x40PowerLaw)
% Find the best performing experiment for each set of repicates
bestError0PowerLaw = max(Error0PowerLaw,[],2);
% Get the mu for that experiment (assumes the columns are in the order of mu values in mus above)
bestMusForError0PowerLaw = zeros(length(bestError0PowerLaw),1);
for i = 1:length(bestError0PowerLaw)
    mask = find(Error0PowerLaw(i,:)==bestError0PowerLaw(i))
    mask = mask(end)
    bestMuForError0PowerLaw(i) = mus(mask)
end

% Read the experiment data (rows are replicates, columns correspond to mu values)
Error0125PowerLaw = table2array(Searchers8SensorError0125RateBounds40x40PowerLaw)
% Find the best performing experiment for each set of repicates
bestError0125PowerLaw = max(Error0125PowerLaw,[],2);
% Get the mu for that experiment (assumes the columns are in the order of mu values in mus above)
bestMusForError0125PowerLaw = zeros(length(bestError0125PowerLaw),1);
for i = 1:length(bestError0125PowerLaw)
    mask = find(Error0125PowerLaw(i,:)==bestError0125PowerLaw(i))
    mask = mask(end)
    bestMuForError0125PowerLaw(i) = mus(mask)
end

% Read the experiment data (rows are replicates, columns correspond to mu values)
Error025PowerLaw = table2array(Searchers8SensorError025RateBounds40x40PowerLaw)
% Find the best performing experiment for each set of repicates
bestError025PowerLaw = max(Error025PowerLaw,[],2);
% Get the mu for that experiment (assumes the columns are in the order of mu values in mus above)
bestMusForError025PowerLaw = zeros(length(bestError025PowerLaw),1);
for i = 1:length(bestError025PowerLaw)
    mask = find(Error025PowerLaw(i,:)==bestError025PowerLaw(i))
    mask = mask(end)
    bestMuForError025PowerLaw(i) = mus(mask)
end

% Read the experiment data (rows are replicates, columns correspond to mu values)
Error0375PowerLaw = table2array(Searchers8SensorError0375RateBounds40x40PowerLaw)
% Find the best performing experiment for each set of repicates
bestError0375PowerLaw = max(Error0375PowerLaw,[],2);
% Get the mu for that experiment (assumes the columns are in the order of mu values in mus above)
bestMusForError0375PowerLaw = zeros(length(bestError0375PowerLaw),1);
for i = 1:length(bestError0375PowerLaw)
    mask = find(Error0375PowerLaw(i,:)==bestError0375PowerLaw(i))
    mask = mask(end)
    bestMuForError0375PowerLaw(i) = mus(mask)
end

% Read the experiment data (rows are replicates, columns correspond to mu values)
Error05PowerLaw = table2array(Searchers8SensorError05RateBounds40x40PowerLaw)
% Find the best performing experiment for each set of repicates
bestError05PowerLaw = max(Error05PowerLaw,[],2);
% Get the mu for that experiment (assumes the columns are in the order of mu values in mus above)
bestMusForError05PowerLaw = zeros(length(bestError05PowerLaw),1);
for i = 1:length(bestError05PowerLaw)
    mask = find(Error05PowerLaw(i,:)==bestError05PowerLaw(i))
    mask = mask(end)
    bestMuForError05PowerLaw(i) = mus(mask)
end

% Read the experiment data (rows are replicates, columns correspond to mu values)
Error0625PowerLaw = table2array(Searchers8SensorError0625RateBounds40x40PowerLaw)
% Find the best performing experiment for each set of repicates
bestError0625PowerLaw = max(Error0625PowerLaw,[],2);
% Get the mu for that experiment (assumes the columns are in the order of mu values in mus above)
bestMusForError0625PowerLaw = zeros(length(bestError0625PowerLaw),1);
for i = 1:length(bestError0625PowerLaw)
    mask = find(Error0625PowerLaw(i,:)==bestError0625PowerLaw(i))
    mask = mask(end)
    bestMuForError0625PowerLaw(i) = mus(mask)
end

% Read the experiment data (rows are replicates, columns correspond to mu values)
Error075PowerLaw = table2array(Searchers8SensorError075RateBounds40x40PowerLaw)
% Find the best performing experiment for each set of repicates
bestError075PowerLaw = max(Error075PowerLaw,[],2);
% Get the mu for that experiment (assumes the columns are in the order of mu values in mus above)
bestMusForError075PowerLaw = zeros(length(bestError075PowerLaw),1);
for i = 1:length(bestError075PowerLaw)
    mask = find(Error075PowerLaw(i,:)==bestError075PowerLaw(i))
    mask = mask(end)
    bestMuForError075PowerLaw(i) = mus(mask)
end

% Read the experiment data (rows are replicates, columns correspond to mu values)
Error0875PowerLaw = table2array(Searchers8SensorError0875RateBounds40x40PowerLaw)
% Find the best performing experiment for each set of repicates
bestError0875PowerLaw = max(Error0875PowerLaw,[],2);
% Get the mu for that experiment (assumes the columns are in the order of mu values in mus above)
bestMusForError0875PowerLaw = zeros(length(bestError0875PowerLaw),1);
for i = 1:length(bestError0875PowerLaw)
    mask = find(Error0875PowerLaw(i,:)==bestError0875PowerLaw(i))
    mask = mask(end)
    bestMuForError0875PowerLaw(i) = mus(mask)
end


bestMusPowerLaw = [bestMuForError0PowerLaw'... 
                    bestMuForError0125PowerLaw'...
                    bestMuForError025PowerLaw'...
                    bestMuForError0375PowerLaw'...
                    bestMuForError05PowerLaw'...
                    bestMuForError0625PowerLaw'...
                    bestMuForError075PowerLaw'...
                    bestMuForError0875PowerLaw'...
                    ]


boxplot(bestMusPowerLaw,'boxstyle','outline', 'labels', textscan(num2str(errorLevel),'%s'))

xlabel('Error rate per second')
ylabel('\mu')
title('PowerLaw');