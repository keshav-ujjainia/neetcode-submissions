class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var freq = [Int: Int]()

        for num in nums {
            freq[num, default: 0] += 1 
        }

        let sortedfreq = freq.sorted { $0.value > $1.value }

        return sortedfreq.prefix(k).map {
            $0.key
        }
    }
}
