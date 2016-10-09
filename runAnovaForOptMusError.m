% Perform an anova analysis on the dependence of performance on mu vs
% distribution and their interaction

% load data and calculate optimal mus
figure
boxplotOptMuDependenceOnErrorPowerLaw
figure
boxplotOptMuDependenceOnErrorClustered
figure
boxplotOptMuDependenceOnErrorUniform

% Marshal the best mus by error and distribution for anova
clustered_for_anova = [];
for i = 1:length(errorLevel) 
    size(bestMusClustered)
  clustered_for_anova = [clustered_for_anova, bestMusClustered(:,i)];
end

powerlaw_for_anova = [];
for i = 1:length(errorLevel) 
  powerlaw_for_anova = [powerlaw_for_anova, bestMusPowerLaw(:,i)];
end

uniform_for_anova = [];
for i = 1:length(errorLevel) 
  uniform_for_anova = [uniform_for_anova, bestMusUniform(:,i)];
end

data_for_anova = [uniform_for_anova;powerlaw_for_anova;clustered_for_anova]
[p,tbl,stats] = anova2(data_for_anova,20)

figure
c = multcompare(stats,'Estimate','row')

figure
c = multcompare(stats,'Estimate','column')