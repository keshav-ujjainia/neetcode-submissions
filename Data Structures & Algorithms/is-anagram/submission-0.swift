class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {

        let arr1 = Array(s)
        let arr2 = Array(t)

        if arr1.count != arr2.count {
            return false
        }

        var dic = [Character: Int]()

        for ch in arr1 {
            dic[ch, default: 0] += 1
        }

        for ch in arr2 {
            dic[ch, default: 0] -= 1
        }

        for value in dic.values {
            if value != 0 {
                return false
            }
        }

        return true
    }
}
