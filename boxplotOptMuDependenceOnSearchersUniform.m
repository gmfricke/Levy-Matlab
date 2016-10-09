mus = [1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 3.0];
nSearchers = [1, 2, 4, 8, 16];

% Read the experiment data (rows are replicates, columns correspond to mu values)
Searchers1Uniform = table2array(Searchers1SensorError0RateBounds40x40Uniform)
% Find the best performing experiment for each set of repicates
bestSearchers1Uniform = max(Searchers1Uniform,[],2);
% Get the mu for that experiment (assumes the columns are in the order of mu values in mus above)
bestMusForSearchers1Uniform = zeros(length(bestSearchers1Uniform),1);
for i = 1:length(bestSearchers1Uniform)
    mask = find(Searchers1Uniform(i,:)==bestSearchers1Uniform(i))
    mask = mask(end)
    bestMuForSearchers1Uniform(i) = mus(mask)
end

% Read the experiment data (rows are replicates, columns correspond to mu values)
Searchers2Uniform = table2array(Searchers2SensorError0RateBounds40x40Uniform)
% Find the best performing experiment for each set of repicates
bestSearchers2Uniform = max(Searchers2Uniform,[],2);
% Get the mu for that experiment (assumes the columns are in the order of mu values in mus above)
bestMusForSearchers2Uniform = zeros(length(bestSearchers2Uniform),1);
for i = 1:length(bestSearchers2Uniform)
    mask = find(Searchers2Uniform(i,:)==bestSearchers2Uniform(i))
    mask = mask(end)
    bestMuForSearchers2Uniform(i) = mus(mask)
end

% Read the experiment data (rows are replicates, columns correspond to mu values)
Searchers4Uniform = table2array(Searchers4SensorError0RateBounds40x40Uniform)
% Find the best performing experiment for each set of repicates
bestSearchers4Uniform = max(Searchers4Uniform,[],2);
% Get the mu for that experiment (assumes the columns are in the order of mu values in mus above)
bestMusForSearchers4Uniform = zeros(length(bestSearchers4Uniform),1);
for i = 1:length(bestSearchers4Uniform)
    mask = find(Searchers4Uniform(i,:)==bestSearchers4Uniform(i))
    mask = mask(end)
    bestMuForError025Uniform(i) = mus(mask)
end

% Read the experiment data (rows are replicates, columns correspond to mu values)
Searchers4Uniform = table2array(Searchers8SensorError0RateBounds40x40Uniform)
% Find the best performing experiment for each set of repicates
bestSearchers4Uniform = max(Searchers4Uniform,[],2);
% Get the mu for that experiment (assumes the columns are in the order of mu values in mus above)
bestMusForSearchers4Uniform = zeros(length(bestSearchers4Uniform),1);
for i = 1:length(bestSearchers4Uniform)
    mask = find(Searchers4Uniform(i,:)==bestSearchers4Uniform(i))
    mask = mask(end)
    bestMuForSearchers4Uniform(i) = mus(mask)
end

% Read the experiment data (rows are replicates, columns correspond to mu values)
Searchers8Uniform = table2array(Searchers8SensorError0RateBounds40x40Uniform)
% Find the best performing experiment for each set of repicates
bestSearchers8Uniform = max(Searchers8Uniform,[],2);
% Get the mu for that experiment (assumes the columns are in the order of mu values in mus above)
bestMusForSearchers8Uniform = zeros(length(bestSearchers8Uniform),1);
for i = 1:length(bestSearchers8Uniform)
    mask = find(Searchers8Uniform(i,:)==bestSearchers8Uniform(i))
    mask = mask(end)
    bestMuForSearchers8Uniform(i) = mus(mask)
end

% Read the experiment data (rows are replicates, columns correspond to mu values)
Searchers16Uniform = table2array(Searchers8SensorError0RateBounds40x40Uniform)
% Find the best performing experiment for each set of repicates
bestSearchers16Uniform = max(Searchers16Uniform,[],2);
% Get the mu for that experiment (assumes the columns are in the order of mu values in mus above)
bestMusForSearchers16Uniform = zeros(length(bestSearchers16Uniform),1);
for i = 1:length(bestSearchers16Uniform)
    mask = find(Searchers16Uniform(i,:)==bestSearchers16Uniform(i))
    mask = mask(end)
    bestMuForSearchers16Uniform(i) = mus(mask)
end

bestMusSearchersUniform = [bestMuForSearchers1Uniform'... 
                    bestMuForSearchers2Uniform'...
                    bestMuForSearchers4Uniform'...
                    bestMuForSearchers8Uniform'...
                    bestMuForSearchers16Uniform'...
                    ]

hold on
boxplot(bestMusSearchersUniform,'boxstyle','outline', 'labels', textscan(num2str(nSearchers),'%s'))
plot(mean(bestMusSearchersUniform),'ko')
xlabel('N Searchers')
ylabel('\mu')
title('Uniform');
hold off