require 'pry'

@parsed_string = []
@string = []

def menu
  print `clear`
  puts '---Ruby letters to ASCII---'
  puts 'Enter a string of letters (case sensitive)'
  puts "Ex. 'A', 'b', 'd', 'R'"
  puts 'Enter your string: '
  @string = STDIN.gets.strip.gsub(" ", "").split("")
  convert
end

def convert
  @string.each do |letter|
    @parsed_string << letter
    @parsed_string << letter.ord
  end
  puts @parsed_string
end

menu