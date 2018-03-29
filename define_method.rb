# class Author
#   def fiction_details(arg)
#     puts "fiction"
#     puts arg
#     puts "something else..."
#   end

#   def coding_details(arg)
#     puts "coding"
#     puts arg
#     puts "something else..."
#   end

#   def history_details(arg)
#     puts "history"
#     puts arg
#     puts "something else..."
#   end
# end

# define_method is less flexible than method_missing?, but methods are created right at runtime

class Author
  genres = %w(fiction coding history)

  genres.each do |genre|
    define_method("#{genre}_details") do |arg|
      puts "Genre: #{genre}"
      puts arg
      puts genre.object_id
    end
  end
end

author = Author.new
author.coding_details "Cal Newport"
author.fiction_details "Ayn Rand"
p author.respond_to?(:coding_details)