function order = dfs_graph(G, startNode)
    % DFS traversal using recursion
    visited = false(1, numnodes(G));
    order = [];

    function dfs(u)
        visited(u) = true;
        order(end+1) = u;
        for v = neighbors(G, u)'
            if ~visited(v)
                dfs(v);
            end
        end
    end

    dfs(startNode);
end
