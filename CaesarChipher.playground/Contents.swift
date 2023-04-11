import Foundation


func caesarCipher(s: String, k: Int) -> String {
    var sb = ""
    for c in s {
        if !c.isLetter {
            sb.append(c)
        } else {
            let root = c.isUppercase ? "A" : "a"
            let ascii = (c.asciiValue! - Character(root).asciiValue! + UInt8(k)) % 26 + Character(root).asciiValue!
            sb.append(Character(UnicodeScalar(ascii)))
        }
    }
    return sb
}

print(caesarCipher(s: "abcdefghijkL-mnopqrstuvwxyz", k: 2))

