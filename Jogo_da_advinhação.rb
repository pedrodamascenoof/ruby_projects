def boas_vindas #função não pode ser definida com caractere maiúsculo.
#.upcase deixa todos os caracteres em caixa alta
  puts 'Bem vindo ao JOGO DA ADVINHAÇÃO'.upcase 
 puts 'Qual é seu nome?'
 #codigo .strip faz a correção da quebra de linha e mantem tudo na mesma frase.
 nome = gets.strip.capitalize
 puts 'Qual é seu sobrenome?'
 snome = gets.strip.capitalize
 # \n para saltar linhas no código.
 puts"\n\n\n"
 puts "Começaremos o jogo para você #{nome} " " #{snome} ,vamos lá..."
end

def jogo
 puts 'Escolha um número secreto entre 0 e 200'
 numero_secreto = gets.strip
 puts 'Escolha o limite de tentativas que você quer dar ao jogador: '
 limite = gets.strip
 puts"\n\n\n\n\n\n"
 puts'Numero secreto escolhido...'
 puts'Que tal advinhar o nosso numero secreto hoje:' 
 
 for tentativa in 1..limite.to_i
   puts"\n\n\n"
   puts "tentativa "+tentativa.to_s+" de "+limite+"."
   puts 'Digite o número:'
   chute = gets
   puts "Será que você acertou? Você chutou: " + chute +"."
    if numero_secreto.to_i != chute.to_i
       puts 'Você errou.'
       maior = numero_secreto.to_i > chute.to_i
        if maior
          puts "O número secreto é maior."
        else
          puts "O número secreto é menor" 
      end  
 
      else
       puts "Você acertou. "
       break
    end
  end
 end  


puts "Deseja iniciar o jogo? (S/N) "
iniciar = gets.chomp # .chomp retorna string. 
if iniciar == "s" or "S"
  boas_vindas
  jogo
else
  puts "menu encerrado."
end