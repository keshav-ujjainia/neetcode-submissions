class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var uset = Set<Int>()

        for num in nums {
            if uset.contains(num) {
                return true
            } 
            uset.insert(num)
        }
        return false
    }
}