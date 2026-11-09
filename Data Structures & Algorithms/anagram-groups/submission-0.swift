class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {

        var result = [String: [String]]()

        for str in strs {
            let key = String(str.sorted())
            result[key, default: []].append(str)
        }

        return Array(result.values)
    }
}
