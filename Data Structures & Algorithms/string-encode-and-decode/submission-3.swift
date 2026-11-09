class Solution {

    func encode(_ strs: [String]) -> String {
        
        var result = ""

        for str in strs {
            result += String(str.count) + "#" + str
        }

        return result
    }

    func decode(_ str: String) -> [String] {

        var result = [String]()

        let chars = Array(str)

        var i = 0

        while i < chars.count {

            var length = 0

            var temp = [Character]()

            while chars[i] != "#" {
                length = length * 10 + (chars[i].wholeNumberValue ?? 0) 
                i += 1
            }

            i += 1


            var j = i
            
            while j < i+length {
                temp.append(chars[j])
                j += 1
            }

            result.append(String(temp))
            i += length

        }

        return result
    }

}
