require './classes/Encryptor.rb'
require './classes/Decryptor.rb'

encryptor = Encryptor.new
decryptor = Decryptor.new

loop do
    puts "\n**************************** Caesar Cipher ********************************\n\n"
    print "Operations:\n1.Encrypt\n2.Decrypt\n3.Exit\n\nChoose operation:"
    operation = gets.chomp.to_i
    case operation
    when 1
        encryptor.encrypt
    when 2
        decryptor.decrypt
    when 3
        exit
    else
        puts "\nInvalid Choice !! Choose '1', '2' or '3' only.\n"
    end
end