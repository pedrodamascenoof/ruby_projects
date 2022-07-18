def palindromo? (palavra)
    palavra.downcase == palavra.downcase.reverse
end
puts 'Descubra se a palavra é palindromo:'.upcase
puts 'Digite a palavra que deseja saber se é palindromo: '
palavra = gets.chomp
puts "\n\n\n"
puts palindromo?(palavra)