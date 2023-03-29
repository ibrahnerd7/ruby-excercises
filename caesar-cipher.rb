class CaesarCipher 
    def translate(message,shift) 
        result=''
        message.each_char do |char|
            ord_value = char.ord
            base = char.ord < 91 ? 65 : 97
            # Modifies Lowercase and Uppercase
            if ord_value.between?(65,90) || ord_value.between?(97,122)
                rotation = (((ord_value - base) + shift) % 26) + base
                result +=rotation.chr
            #Keeps spaces and punctuations
            else
                result += char
            end
        end
        result
    end
end

ceaser_cipher = CaesarCipher.new
new_string = ceaser_cipher.translate("What a string!", 5)
puts(new_string)