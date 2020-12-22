let list = ["aku","kua","kau","gua","kamu","muka","amuk","sersan"]

    func groupAnagrams(strs: [String]) -> [[String]] {
        //using dictionary
        var dictMap = [String:[String]]();
        
        for str in strs {
            //sorting characternya
            let characters = str.sorted { (s1, s2) -> Bool in
                return s1 < s2
            }
            let key = String(characters)
            
            if dictMap[key] != nil {
                dictMap[key]?.append(str)
            }
            else {
                dictMap[key] = [str]
            }
        }
        
        return dictMap.map({ (key,value) -> [String] in
            return value
        })
    }
    
groupAnagrams(strs: list)


