dial_book = {
    "newyork" => "212",
    "newbrunswick" => "732",
    "edison" => "908",
    "plainsboro" => "609",
    "sanfrancisco" => "301",
    "miami" => "305",
    "paloalto" => "650",
    "evanston" => "847",
    "orlando" => "407",
    "lancaster" => "717"
}

def get_city_names(somehash)
    somehash.each { |k, v| puts k }
end

def get_area_code(somehash, cidade)
    if somehash.include?(cidade)
        puts "O código da área para #{cidade} é #{somehash[cidade]}"
    else
        puts "Você colocou um nome de cidade inválido"
    end
end

loop do
    puts "Você quer ver a lista de cidade? (S/N)"
    input = gets.chomp.downcase
    break if input != "s"
    get_city_names(dial_book)
    puts
    puts "Digite o código da cidade que você quer?"
    cidade = gets.chomp
    get_area_code(dial_book, cidade)
    puts
end