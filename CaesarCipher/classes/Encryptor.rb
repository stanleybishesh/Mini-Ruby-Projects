require './modules/Encryption.rb'
require './modules/Decryption.rb'

class Encryptor
    include Encryption
    include Decryption

    def initialize
    end

    def encrypt
        print "\nEnter text to encrypt: "
        text = gets.chomp
        print "Enter shift value: "
        num = gets.chomp.to_i
        puts "\nEncrypted Text: #{encryption(text,num)}"
        while true
            print "\nDo you want to decrypt it? (y/n): "
            yesno = gets.chomp
            case yesno
            when "y"
                text = "#{encryption(text, num)}"
                puts "\nDecrypted Text: #{decryption(text,num)}\n"
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