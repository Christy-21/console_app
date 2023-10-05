require 'date'
def current_time
  DateTime.now.strftime("%Y-%m-%d %H:%M:%S")
end

  def add_book
  puts "Enter the book name:"
  book_name = gets.chomp

  puts "Enter the amount:"
  amount = gets.chomp.to_i

  entry = "#{current_time} - #{book_name} (Amount: #{amount})"

  File.open("books.txt", "a") do |file|
    file.puts entry
  end

  puts "Book entry added successfully!"
end
loop do
  puts "1. Add a book"
  puts "2. Exit"
  print "Enter your choice: "
  choice = gets.chomp.to_i

  case choice
  when 1
    add_book
  when 2
    break
  else
    puts "Invalid choice. Please try again."
  end
end
