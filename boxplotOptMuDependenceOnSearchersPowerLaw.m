mus = [1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 3.0];
nSearchers = [1, 2, 4, 8, 16];

% Read the experiment data (rows are replicates, columns correspond to mu values)
Searchers1PowerLaw = table2array(Searchers1SensorError0RateBounds40x40PowerLaw)
% Find the best performing experiment for each set of repicates
bestSearchers1PowerLaw = max(Searchers1PowerLaw,[],2);
% Get the mu for that experiment (assumes the columns are in the order of mu values in mus above)
bestMusForSearchers1PowerLaw = zeros(length(bestSearchers1PowerLaw),1);
for i = 1:length(bestSearchers1PowerLaw)
    mask = find(Searchers1PowerLaw(i,:)==bestSearchers1PowerLaw(i))
    mask = mask(end)
    bestMuForSearchers1PowerLaw(i) = mus(mask)
end

% Read the experiment data (rows are replicates, columns correspond to mu values)
Searchers2PowerLaw = table2array(Searchers2SensorError0RateBounds40x40PowerLaw)
% Find the best performing experiment for each set of repicates
bestSearchers2PowerLaw = max(Searchers2PowerLaw,[],2);
% Get the mu for that experiment (assumes the columns are in the order of mu values in mus above)
bestMusForSearchers2PowerLaw = zeros(length(bestSearchers2PowerLaw),1);
for i = 1:length(bestSearchers2PowerLaw)
    mask = find(Searchers2PowerLaw(i,:)==bestSearchers2PowerLaw(i))
    mask = mask(end)
    bestMuForSearchers2PowerLaw(i) = mus(mask)
end

% Read the experiment data (rows are replicates, columns correspond to mu values)
Searchers4PowerLaw = table2array(Searchers4SensorError0RateBounds40x40PowerLaw)
% Find the best performing experiment for each set of repicates
bestSearchers4PowerLaw = max(Searchers4PowerLaw,[],2);
% Get the mu for that experiment (assumes the columns are in the order of mu values in mus above)
bestMusForSearchers4PowerLaw = zeros(length(bestSearchers4PowerLaw),1);
for i = 1:length(bestSearchers4PowerLaw)
    mask = find(Searchers4PowerLaw(i,:)==bestSearchers4PowerLaw(i))
    mask = mask(end)
    bestMuForError025PowerLaw(i) = mus(mask)
end

% Read the experiment data (rows are replicates, columns correspond to mu values)
Searchers4PowerLaw = table2array(Searchers8SensorError0RateBounds40x40PowerLaw)
% Find the best performing experiment for each set of repicates
bestSearchers4PowerLaw = max(Searchers4PowerLaw,[],2);
% Get the mu for that experiment (assumes the columns are in the order of mu values in mus above)
bestMusForSearchers4PowerLaw = zeros(length(bestSearchers4PowerLaw),1);
for i = 1:length(bestSearchers4PowerLaw)
    mask = find(Searchers4PowerLaw(i,:)==bestSearchers4PowerLaw(i))
    mask = mask(end)
    bestMuForSearchers4PowerLaw(i) = mus(mask)
end

% Read the experiment data (rows are replicates, columns correspond to mu values)
Searchers8PowerLaw = table2array(Searchers8SensorError0RateBounds40x40PowerLaw)
% Find the best performing experiment for each set of repicates
bestSearchers8PowerLaw = max(Searchers8PowerLaw,[],2);
% Get the mu for that experiment (assumes the columns are in the order of mu values in mus above)
bestMusForSearchers8PowerLaw = zeros(length(bestSearchers8PowerLaw),1);
for i = 1:length(bestSearchers8PowerLaw)
    mask = find(Searchers8PowerLaw(i,:)==bestSearchers8PowerLaw(i))
    mask = mask(end)
    bestMuForSearchers8PowerLaw(i) = mus(mask)
end

% Read the experiment data (rows are replicates, columns correspond to mu values)
Searchers16PowerLaw = table2array(Searchers8SensorError0RateBounds40x40PowerLaw)
% Find the best performing experiment for each set of repicates
bestSearchers16PowerLaw = max(Searchers16PowerLaw,[],2);
% Get the mu for that experiment (assumes the columns are in the order of mu values in mus above)
bestMusForSearchers16PowerLaw = zeros(length(bestSearchers16PowerLaw),1);
for i = 1:length(bestSearchers16PowerLaw)
    mask = find(Searchers16PowerLaw(i,:)==bestSearchers16PowerLaw(i))
    mask = mask(end)
    bestMuForSearchers16PowerLaw(i) = mus(mask)
end


bestMusSearchersPowerLaw = [bestMuForSearchers1PowerLaw'... 
                    bestMuForSearchers2PowerLaw'...
                    bestMuForSearchers4PowerLaw'...
                    bestMuForSearchers8PowerLaw'...
                    bestMuForSearchers16PowerLaw'...
                    ]

hold on
boxplot(bestMusSearchersPowerLaw,'boxstyle','outline', 'labels', textscan(num2str(nSearchers),'%s'))
plot(mean(bestMusSearchersPowerLaw),'ko')
xlabel('N Searchers')
ylabel('\mu')
title('PowerLaw');
hold off