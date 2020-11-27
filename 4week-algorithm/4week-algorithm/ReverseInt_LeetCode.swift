import Foundation

class ReverseInt {
    func reverse(_ x: Int) -> Int {
        let strX: String = String(x)
        var arrX: Array<Character> = Array(strX)
        let limit = -2147483648
        
        var answer: Int

        if arrX[0] == "-" {
            arrX.removeFirst()
            arrX.reverse()
            arrX.insert("-", at: 0)
            answer = Int(arrX.reduce("", { String($0)+String($1) }))!
            
            return answer > -limit-1 || answer < limit ? 0 : answer
        }
        arrX.reverse()
        answer = Int(arrX.reduce("", { String($0)+String($1) }))!
        
        return answer > -limit-1 || answer < limit ? 0 : answer
    }
}
