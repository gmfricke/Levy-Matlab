% Create boxplots for different numbers of searchers
x_scale = 1.2;

musStrs = {'1.1' '1.2' '1.3' '1.4' '1.5' '1.6' '1.7' '1.8' '1.9' '2.0' '2.1' '2.2' '2.3' '2.4' '2.5' '2.6' '2.7' '2.8' '2.9' '3.0'}
g = subplot(2,3,1)
p = get(g,'position');
p(3) = p(4)*x_scale; % Add 10 percent to height
set(g, 'position', p);
boxplot(table2array(Searchers1SensorError0RateBounds40x40PowerLaw), musStrs);
xlabel('\mu')
ylabel('Targets Collected')
title('1 Searcher')

g = subplot(2,3,2)
p = get(g,'position');
p(3) = p(4)*x_scale; % Add 10 percent to height
set(g, 'position', p);
boxplot(table2array(Searchers2SensorError0RateBounds40x40PowerLaw), musStrs);
title('2 Searchers')

g = subplot(2,3,3)
p = get(g,'position');
p(3) = p(4)*x_scale; % Add 10 percent to height
set(g, 'position', p);
boxplot(table2array(Searchers4SensorError0RateBounds40x40PowerLaw), musStrs);
title('4 Searchers')

g = subplot(2,3,4)
p = get(g,'position');
p(3) = p(4)*x_scale; % Add 10 percent to height
set(g, 'position', p);
boxplot(table2array(Searchers8SensorError0RateBounds40x40PowerLaw), musStrs);
title('8 Searchers')

g = subplot(2,3,5)
p = get(g,'position');
p(3) = p(4)*x_scale; % Add 10 percent to height
set(g, 'position', p);
boxplot(table2array(Searchers16SensorError0RateBounds40x40PowerLaw), musStrs);
title('16 Searchers')