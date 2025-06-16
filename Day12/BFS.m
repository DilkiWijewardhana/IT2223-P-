% Step 1: Import graph data
s = [1, 1, 2, 3, 4];  % Source nodes
t = [2, 3, 4, 4, 5];  % Destination nodes

% Step 2: Create graph from source and destination
G = graph(s, t);

% Step 3: Draw the graph
figure;
h = plot(G, 'Layout', 'force');
title('Original Graph');

% Step 4: Extract and display a subgraph (e.g., nodes 2, 3, 4)
sub_nodes = [2, 3, 4];
subG = subgraph(G, sub_nodes);

figure;
plot(subG, 'Layout', 'force');
title('Subgraph with Nodes 2, 3, 4');

% Step 5: Display adjacent vertices for each node
disp('Adjacent vertices for each node:');
for i = 1:numnodes(G)
    fprintf('Node %d is adjacent to: ', i);
    neighbors = neighbors(G, i);
    disp(neighbors');
end

% Step 6: Label edges and nodes
h.EdgeLabel = G.Edges.EndNodes(:,1) + "→" + G.Edges.EndNodes(:,2);  % Edge labels
h.NodeLabel = cellstr(string(1:numnodes(G)));                      % Node labels

% Step 7: Graph coloring (simple greedy coloring)
colors = zeros(numnodes(G), 1);  % Initialize colors
for i = 1:numnodes(G)
    neighborColors = colors(neighbors(G, i));
    color = 1;
    while any(neighborColors == color)
        color = color + 1;
    end
    colors(i) = color;
end

% Assign colors to nodes in the plot
cmap = lines(max(colors));  % Use MATLAB's default colormap
h.NodeColor = cmap(colors, :);

% Step 8: Find and display shortest path from node 1 to node 5
[spath, spLength] = shortestpath(G, 1, 5);
fprintf('\nShortest path from node 1 to 5: %s\n', mat2str(spath));
fprintf('Path length: %d\n', spLength);

% Highlight the shortest path on the graph
highlight(h, spath, 'EdgeColor', 'r', 'LineWidth', 2);
highlight(h, spath, 'NodeColor', 'r');
