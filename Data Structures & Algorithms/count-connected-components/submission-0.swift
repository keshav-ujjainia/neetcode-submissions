class Solution {
    func countComponents(_ n: Int, _ edges: [[Int]]) -> Int {

        var graph = Array(repeating: [Int](), count: n)

        for pair in edges {
            let u = pair[0]
            let v = pair[1]

            graph[u].append(v)
            graph[v].append(u)
        }

        var connected = 0
        var visited = Array(repeating: false, count: n)


        func dfs(_ node: Int) {

            visited[node] = true

            for nbr in graph[node] {
                if !visited[nbr] {
                    dfs(nbr)
                }
            }
        }

        for i in 0..<n {
            if !visited[i] {
                connected += 1
                dfs(i)
            }
        }

        return connected
    }
}
