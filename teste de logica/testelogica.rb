# Desafio Lógica de programação
# Dado um conjunto de caracteres, você precisará extrair os "diamantes" ( <>) e as "areias" ( . ) da expressão e no final exibir a quantidade de diamantes extraídos
# Expressão: <<.<<..>><>><.>.>.<<.>.<.>>>><>><>>
# Requisitos:
# -Extrair os diamantes e areias da expressão até que não haja mais o que ser extraído;
# -Exibir a quantidade de diamantes extraídos;;
# -O projeto deve ser disponibilizado em um repositório aberto no GitHub. Envie a URL assim que
# possível

string = "<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>"
diamonds = 0

# remove areias
sand = string.gsub(".", "")

#remove diamantes

while sand.include? "<>"
  extraction = sand.sub("<>","")
  diamonds =+ 1
end

puts "You have #{diamonds}"
