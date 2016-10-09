mus = [1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 3.0];
errorLevel = [0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 0.875, 1];

meansError0Clustered = mean(table2array(Searchers8SensorError0RateBounds40x40Clustered))
meansError0125Clustered = mean(table2array(Searchers8SensorError0125RateBounds40x40Clustered))
meansError025Clustered = mean(table2array(Searchers8SensorError025RateBounds40x40Clustered))
meansError0375Clustered = mean(table2array(Searchers8SensorError0375RateBounds40x40Clustered))
meansError05Clustered = mean(table2array(Searchers8SensorError05RateBounds40x40Clustered))
meansError0625Clustered = mean(table2array(Searchers8SensorError0625RateBounds40x40Clustered))
meansError075Clustered = mean(table2array(Searchers8SensorError075RateBounds40x40Clustered))
meansError0875Clustered = mean(table2array(Searchers8SensorError0875RateBounds40x40Clustered))
meansError1Clustered = mean(table2array(Searchers8SensorError1RateBounds40x40Clustered))

bestError0Clustered = max(meansError0Clustered)
bestError0125Clustered = max(meansError0125Clustered)
bestError025Clustered = max(meansError025Clustered)
bestError0375Clustered = max(meansError0375Clustered)
bestError05Clustered = max(meansError05Clustered)
bestError0625Clustered = max(meansError0625Clustered)
bestError075Clustered = max(meansError075Clustered)
bestError0875Clustered = max(meansError0875Clustered)
bestError1Clustered = max(meansError1Clustered)

bestError0IdxClustered = find(meansError0Clustered==bestError0Clustered)
bestError0125IdxClustered = find(meansError0125Clustered==bestError0125Clustered)
bestError025IdxClustered = find(meansError025Clustered==bestError025Clustered)
bestError0375IdxClustered = find(meansError0375Clustered==bestError0375Clustered)
bestError05IdxClustered = find(meansError05Clustered==bestError05Clustered)
bestError0625IdxClustered = find(meansError0625Clustered==bestError0625Clustered)
bestError075IdxClustered = find(meansError075Clustered==bestError075Clustered)
bestError0875IdxClustered = find(meansError0875Clustered==bestError0875Clustered)
bestError1IdxClustered = find(meansError1Clustered==bestError1Clustered)

bestMuForError0Clustered = mus(bestError0IdxClustered(end))
bestMuForError0125Clustered = mus(bestError0125IdxClustered(end))  
bestMuForError025Clustered = mus(bestError025IdxClustered(end))
bestMuForError0375Clustered = mus(bestError0375IdxClustered(end)) 
bestMuForError05Clustered = mus(bestError05IdxClustered(end))
bestMuForError0625Clustered = mus(bestError0625IdxClustered(end))
bestMuForError075Clustered = mus(bestError075IdxClustered(end))
bestMuForError0875Clustered = mus(bestError0875IdxClustered(end))
bestMuForError1Clustered = mus(bestError1IdxClustered(end))

meansError0PowerLaw = mean(table2array(Searchers8SensorError0RateBounds40x40PowerLaw))
meansError0125PowerLaw = mean(table2array(Searchers8SensorError0125RateBounds40x40PowerLaw))
meansError025PowerLaw = mean(table2array(Searchers8SensorError025RateBounds40x40PowerLaw))
meansError0375PowerLaw = mean(table2array(Searchers8SensorError0375RateBounds40x40PowerLaw))
meansError05PowerLaw = mean(table2array(Searchers8SensorError05RateBounds40x40PowerLaw))
meansError0625PowerLaw = mean(table2array(Searchers8SensorError0625RateBounds40x40PowerLaw))
meansError075PowerLaw = mean(table2array(Searchers8SensorError075RateBounds40x40PowerLaw))
meansError0875PowerLaw = mean(table2array(Searchers8SensorError0875RateBounds40x40PowerLaw))
meansError1PowerLaw = mean(table2array(Searchers8SensorError1RateBounds40x40PowerLaw))

bestError0PowerLaw = max(meansError0PowerLaw)
bestError0125PowerLaw = max(meansError0125PowerLaw)
bestError025PowerLaw = max(meansError025PowerLaw)
bestError0375PowerLaw = max(meansError0375PowerLaw)
bestError05PowerLaw = max(meansError05PowerLaw)
bestError0625PowerLaw = max(meansError0625PowerLaw)
bestError075PowerLaw = max(meansError075PowerLaw)
bestError0875PowerLaw = max(meansError0875PowerLaw)
bestError1PowerLaw = max(meansError1PowerLaw)

bestError0IdxPowerLaw = find(meansError0PowerLaw==bestError0PowerLaw)
bestError0125IdxPowerLaw = find(meansError0125PowerLaw==bestError0125PowerLaw)
bestError025IdxPowerLaw = find(meansError025PowerLaw==bestError025PowerLaw)
bestError0375IdxPowerLaw = find(meansError0375PowerLaw==bestError0375PowerLaw)
bestError05IdxPowerLaw = find(meansError05PowerLaw==bestError05PowerLaw)
bestError0625IdxPowerLaw = find(meansError0625PowerLaw==bestError0625PowerLaw)
bestError075IdxPowerLaw = find(meansError075PowerLaw==bestError075PowerLaw)
bestError0875IdxPowerLaw = find(meansError0875PowerLaw==bestError0875PowerLaw)
bestError1IdxPowerLaw = find(meansError1PowerLaw==bestError1PowerLaw)

bestMuForError0PowerLaw = mus(bestError0IdxPowerLaw(end))
bestMuForError0125PowerLaw = mus(bestError0125IdxPowerLaw(end))  
bestMuForError025PowerLaw = mus(bestError025IdxPowerLaw(end))
bestMuForError0375PowerLaw = mus(bestError0375IdxPowerLaw(end)) 
bestMuForError05PowerLaw = mus(bestError05IdxPowerLaw(end))
bestMuForError0625PowerLaw = mus(bestError0625IdxPowerLaw(end))
bestMuForError075PowerLaw = mus(bestError075IdxPowerLaw(end))
bestMuForError0875PowerLaw = mus(bestError0875IdxPowerLaw(end))
bestMuForError1PowerLaw = mus(bestError1IdxPowerLaw(end))

meansError0Uniform = mean(table2array(Searchers8SensorError0RateBounds40x40Uniform))
meansError0125Uniform = mean(table2array(Searchers8SensorError0125RateBounds40x40Uniform))
meansError025Uniform = mean(table2array(Searchers8SensorError025RateBounds40x40Uniform))
meansError0375Uniform = mean(table2array(Searchers8SensorError0375RateBounds40x40Uniform))
meansError05Uniform = mean(table2array(Searchers8SensorError05RateBounds40x40Uniform))
meansError0625Uniform = mean(table2array(Searchers8SensorError0625RateBounds40x40Uniform))
meansError075Uniform = mean(table2array(Searchers8SensorError075RateBounds40x40Uniform))
meansError0875Uniform = mean(table2array(Searchers8SensorError0875RateBounds40x40Uniform))
meansError1Uniform = mean(table2array(Searchers8SensorError1RateBounds40x40Uniform))

bestError0Uniform = max(meansError0Uniform)
bestError0125Uniform = max(meansError0125Uniform)
bestError025Uniform = max(meansError025Uniform)
bestError0375Uniform = max(meansError0375Uniform)
bestError05Uniform = max(meansError05Uniform)
bestError0625Uniform = max(meansError0625Uniform)
bestError075Uniform = max(meansError075Uniform)
bestError0875Uniform = max(meansError0875Uniform)
bestError1Uniform = max(meansError1Uniform)

bestError0IdxUniform = find(meansError0Uniform==bestError0Uniform)
bestError0125IdxUniform = find(meansError0125Uniform==bestError0125Uniform)
bestError025IdxUniform = find(meansError025Uniform==bestError025Uniform)
bestError0375IdxUniform = find(meansError0375Uniform==bestError0375Uniform)
bestError05IdxUniform = find(meansError05Uniform==bestError05Uniform)
bestError0625IdxUniform = find(meansError0625Uniform==bestError0625Uniform)
bestError075IdxUniform = find(meansError075Uniform==bestError075Uniform)
bestError0875IdxUniform = find(meansError0875Uniform==bestError0875Uniform)
bestError1IdxUniform = find(meansError1Uniform==bestError1Uniform)

bestMuForError0Uniform = mus(bestError0IdxUniform(end))
bestMuForError0125Uniform = mus(bestError0125IdxUniform(end))  
bestMuForError025Uniform = mus(bestError025IdxUniform(end))
bestMuForError0375Uniform = mus(bestError0375IdxUniform(end)) 
bestMuForError05Uniform = mus(bestError05IdxUniform(end))
bestMuForError0625Uniform = mus(bestError0625IdxUniform(end))
bestMuForError075Uniform = mus(bestError075IdxUniform(end))
bestMuForError0875Uniform = mus(bestError0875IdxUniform(end))
bestMuForError1Uniform = mus(bestError1IdxUniform(end))

figure
hold on

bestMusClustered = [bestMuForError0Clustered, bestMuForError0125Clustered, bestMuForError025Clustered, bestMuForError0375Clustered, bestMuForError05Clustered, bestMuForError0625Clustered, bestMuForError075Clustered, bestMuForError0875Clustered, bestMuForError1Clustered]
bestMusPowerLaw = [bestMuForError0PowerLaw, bestMuForError0125PowerLaw, bestMuForError025PowerLaw, bestMuForError0375PowerLaw, bestMuForError05PowerLaw, bestMuForError0625PowerLaw, bestMuForError075PowerLaw, bestMuForError0875PowerLaw, bestMuForError1PowerLaw]
bestMusUniform = [bestMuForError0Uniform, bestMuForError0125Uniform, bestMuForError025Uniform, bestMuForError0375Uniform, bestMuForError05Uniform, bestMuForError0625Uniform, bestMuForError075Uniform, bestMuForError0875Uniform, bestMuForError1Uniform]

plot(errorLevel, bestMusClustered, 'ko-');
plot(errorLevel, bestMusPowerLaw, 'bx-');
plot(errorLevel, bestMusUniform, 'gd-');

hold off

xlabel('Error Rate (probability of false negative per second)');
ylabel('Optimal Observed \mu');

legend('Clustered', 'PowerLaw', 'Uniform');

