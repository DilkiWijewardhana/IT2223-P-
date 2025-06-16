%Define nodes
nodes = {'A', 'B', 'C', 'D', 'E', 'F', 'G'};

%Define edges using source and target nodes
s = [1 1 2 2 3 3]; %from: A->B, A->C, B->D, B->E, C->F, C->G
t = [2 3 4 5 6 7]; %to

%Define the weights
weights = [2 3 4 5 6 1];

%Create a directed graph
G = digraph(s, t, weights, nodes);

%Plot the tree with edge weights displayed
plot(G, ...
    'Layout','layered', ...
    'Direction','down', ...
    'EdgeLabel',G.Edges.Weight);
title('Weighted tree with 3 levels');
