mus = [1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 3.0];
nSearchers = [1, 2, 4, 8, 16];

% Read the experiment data (rows are replicates, columns correspond to mu values)
Searchers1Clustered = table2array(Searchers1SensorError0RateBounds40x40Clustered)
% Find the best performing experiment for each set of repicates
bestSearchers1Clustered = max(Error0Clustered,[],2);
% Get the mu for that experiment (assumes the columns are in the order of mu values in mus above)
bestMusForSearchers1Clustered = zeros(length(bestSearchers1Clustered),1);
for i = 1:length(bestSearchers1Clustered)
    mask = find(Searchers1Clustered(i,:)==bestSearchers1Clustered(i))
    mask = mask(end)
    bestMuForSearchers1Clustered(i) = mus(mask)
end

% Read the experiment data (rows are replicates, columns correspond to mu values)
Searchers2Clustered = table2array(Searchers2SensorError0RateBounds40x40Clustered)
% Find the best performing experiment for each set of repicates
bestSearchers2Clustered = max(Searchers2Clustered,[],2);
% Get the mu for that experiment (assumes the columns are in the order of mu values in mus above)
bestMusForSearchers2Clustered = zeros(length(bestSearchers2Clustered),1);
for i = 1:length(bestSearchers2Clustered)
    mask = find(Searchers2Clustered(i,:)==bestSearchers2Clustered(i))
    mask = mask(end)
    bestMuForSearchers2Clustered(i) = mus(mask)
end

% Read the experiment data (rows are replicates, columns correspond to mu values)
Searchers4Clustered = table2array(Searchers4SensorError0RateBounds40x40Clustered)
% Find the best performing experiment for each set of repicates
bestSearchers4Clustered = max(Searchers4Clustered,[],2);
% Get the mu for that experiment (assumes the columns are in the order of mu values in mus above)
bestMusForSearchers4Clustered = zeros(length(bestSearchers4Clustered),1);
for i = 1:length(bestSearchers4Clustered)
    mask = find(Searchers4Clustered(i,:)==bestSearchers4Clustered(i))
    mask = mask(end)
    bestMuForError025Clustered(i) = mus(mask)
end

% Read the experiment data (rows are replicates, columns correspond to mu values)
Searchers4Clustered = table2array(Searchers8SensorError0RateBounds40x40Clustered)
% Find the best performing experiment for each set of repicates
bestSearchers4Clustered = max(Searchers4Clustered,[],2);
% Get the mu for that experiment (assumes the columns are in the order of mu values in mus above)
bestMusForSearchers4Clustered = zeros(length(bestSearchers4Clustered),1);
for i = 1:length(bestSearchers4Clustered)
    mask = find(Searchers4Clustered(i,:)==bestSearchers4Clustered(i))
    mask = mask(end)
    bestMuForSearchers4Clustered(i) = mus(mask)
end

% Read the experiment data (rows are replicates, columns correspond to mu values)
Searchers8Clustered = table2array(Searchers8SensorError0RateBounds40x40Clustered)
% Find the best performing experiment for each set of repicates
bestSearchers8Clustered = max(Searchers8Clustered,[],2);
% Get the mu for that experiment (assumes the columns are in the order of mu values in mus above)
bestMusForSearchers8Clustered = zeros(length(bestSearchers8Clustered),1);
for i = 1:length(bestSearchers8Clustered)
    mask = find(Searchers8Clustered(i,:)==bestSearchers8Clustered(i))
    mask = mask(end)
    bestMuForSearchers8Clustered(i) = mus(mask)
end

% Read the experiment data (rows are replicates, columns correspond to mu values)
Searchers16Clustered = table2array(Searchers8SensorError0RateBounds40x40Clustered)
% Find the best performing experiment for each set of repicates
bestSearchers16Clustered = max(Searchers16Clustered,[],2);
% Get the mu for that experiment (assumes the columns are in the order of mu values in mus above)
bestMusForSearchers16Clustered = zeros(length(bestSearchers16Clustered),1);
for i = 1:length(bestSearchers16Clustered)
    mask = find(Searchers16Clustered(i,:)==bestSearchers16Clustered(i))
    mask = mask(end)
    bestMuForSearchers16Clustered(i) = mus(mask)
end


bestMusSearchersClustered = [bestMuForSearchers1Clustered'... 
                    bestMuForSearchers2Clustered'...
                    bestMuForSearchers4Clustered'...
                    bestMuForSearchers8Clustered'...
                    bestMuForSearchers16Clustered'...
                    ]


boxplot(bestMusSearchersClustered,'boxstyle','outline', 'labels', textscan(num2str(nSearchers),'%s'))

xlabel('N Searchers')
ylabel('\mu')
title('Clustered');