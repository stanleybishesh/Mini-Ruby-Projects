module Decryption
    def decryption(text,num)
        result=""
        for i in (0..text.length-1)
            if text[i] == text[i].upcase
                result += ((text[i].ord - num - 65) % 26 + 65).chr
            elsif text[i] == text[i].downcase
                result += ((text[i].ord - num - 97) % 26 + 97).chr
            else
                return "Invalid String"
            end
        end
        return result
    end
end