movies = {
    Bingo: 9, 
    Crazy: 5,
    Funtimes: 8,
}
    
puts "Would you like to add, display, delete or update a movie?"

choice = gets.chomp.downcase
case choice
when "add"
  puts "What movie would you like to add"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "What rating would you like to give #{title}?"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "Ok, #{title} has been added with a rating of #{rating.to_s}"
  else
    puts "#{title} already exists, it has a rating of #{movies[title.to_sym]}"
  end
  
when "display"
  puts "What movies rating would you like to see?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "movie does not exist"
  else
    puts "#{title}'s rating is #{movies[title.to_sym]}"
  end
  
when "update"
  puts "What movie would you like to update?"
  title = gets.chomp
  if 
    movies[title.to_sym].nil?
    puts "movie does not exist"
  else
    puts "What rating would you like to update #{title} with?"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_s
    puts "#{title} has been updated with a rating of #{movies[title.to_sym]}"
  end
  
when "delete"
  puts "What movie would you like to delete?"
  title = gets.chomp
    if 
    movies[title.to_sym].nil?
    puts "movie does not exist"
  else
    movies.delete(title.to_sym)
    puts "#{title} has been deleted"
  end

end