% Perform an anova analysis on the dependence of performance on mu vs
% distribution and their interaction

% load data and calculate optimal mus
figure
boxplotOptMuDependenceOnSearchersPowerLaw
figure
boxplotOptMuDependenceOnSearchersClustered
figure
boxplotOptMuDependenceOnSearchersUniform

% Marshal the best mus by error and distribution for anova
clustered_for_anova = [];
for i = 1:length(nSearchers) 
  clustered_for_anova = [clustered_for_anova, bestMusSearchersClustered(:,i)];
end

powerlaw_for_anova = [];
for i = 1:length(nSearchers) 
  powerlaw_for_anova = [powerlaw_for_anova, bestMusSearchersPowerLaw(:,i)];
end

uniform_for_anova = [];
for i = 1:length(nSearchers) 
  uniform_for_anova = [uniform_for_anova, bestMusSearchersUniform(:,i)];
end

data_for_anova = [uniform_for_anova;powerlaw_for_anova;clustered_for_anova]
[p,tbl,stats] = anova2(data_for_anova,20)

figure
c = multcompare(stats,'Estimate','row')

figure
c = multcompare(stats,'Estimate','column')