function T = filesToTable( path )

files = dir([path '*.csv']); 
numfiles = length(files);

T = readtable([path files(1).name],'ReadVariableNames',false);
T(:,1) = [];
T = T(height(T)+1-20:end,:);
T
[pathstr,name,ext] = fileparts(files(1).name);
disp(['Trying to import ' [path,pathstr,name,ext] ' of length ' num2str(height(T)) ' (' num2str(1) ' of ' num2str(numfiles) ')']);
T.Properties.VariableNames{1} = ['Mu', name];
disp('Suceeded');

for k = 2:numfiles 
    new_table = readtable([path files(k).name],'ReadVariableNames',false);
    new_table(:,1) = [];
    new_table = new_table(height(new_table)+1-20:end,:); % Restrict to the last 20 entries
    [pathstr,name,ext] = fileparts(files(k).name);
    disp(['Trying to import ' [path,pathstr,name,ext] ' of length ' num2str(height(new_table)) ' (' num2str(k) ' of ' num2str(numfiles) ')']);
    T = horzcat(T,new_table);
    T.Properties.VariableNames{k} = ['Mu', name];
    disp('Suceeded');
end



end

