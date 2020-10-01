movies = {
    Bingo: 9, 
    Crazy: 5,
    Funtimes: 8,
}
    
puts "Would you like to add, display, delete or update a movie?"


choice = gets.chomp.downcase
case choice
when "add"
  puts "What movie would you like to add?"
  title = gets.chomp
  if 
    movies[title.to_sym].nil?
    puts "What rating do you want to give it (1-10)?"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "Added!"
  else
    puts "#{title} has already been added, it's rating is #{movies[title.to_sym]}"
  end


when "display"
  puts "What movie would you like to see the rating of?"
  title = gets.chomp
  if
    movies[title.to_sym].nil?
    puts "That movie does not exist"
  else 
  puts "#{title}'s rating is #{movies[title.to_sym]}"
end

when "update"
  puts "What movie would you like to update?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "this movie does not exist"
  else 
    puts "what rating do you  want to update #{title} to?"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been updated to a rating of #{rating.to_s}"
  end

when "delete"
  puts "What movie would you like to delete?"
  title = gets.chomp
  if
    movies[title.to_sym].nil?
    puts "That movie does not exist"
  else
    movies.delete(title.to_sym)
    puts "#{title} has been deleted"
end
end



  

