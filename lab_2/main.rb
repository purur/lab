
def endsWithCS(word)
    if (word[-2] + word[-1]) == "cs"
      number = 2 ** word.length
      puts "Science '#{word}' ends with 'cs', the length of a word squared is: "
      return number
    else
      return word.reverse
    end
 end


 def pokemonCounter
   puts "Введите колличество покемонов: "
   quantity = gets.to_i
   arr = []
   i = 0
   while i < quantity do
     puts "Укажите имя #{i+1} покемона: "
     name = gets.chomp
     puts "Укажите цвет #{i+1} покемона: "
     color = gets.chomp
     pokemon = "name: #{name}, color: #{color} "
     arr << {pokemon => i}
     i+=1
   end
   return arr
 end

def init
  puts endsWithCS( "organics")
  puts pokemonCounter
end

init