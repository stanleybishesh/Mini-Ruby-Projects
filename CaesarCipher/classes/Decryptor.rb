require './modules/Encryption.rb'
require './modules/Decryption.rb'

class Decryptor
    include Encryption
    include Decryption

    def initialize
    end

    def decrypt
        print "\nEnter text to decrypt: "
        text = gets.chomp
        print "Enter shift value: "
        num = gets.chomp.to_i
        puts "\nDecrypted Text: #{decryption(text, num)}"
        while true
            print "\nDo you want to encrypt it? (y/n): "
            yesno = gets.chomp
            case yesno
            when "y"
                text = "#{decryption(text, num)}"
                puts "Encrypted Text: #{encryption(text, num)}"
                break
            when "n"
                break
            else
                puts "\nInvalid Choice !! Type 'y' or 'n' only.\n"
                next
            end
        end
    end
end