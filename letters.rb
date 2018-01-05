require 'pry'

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
  @string.map! { |l| { l => l.ord }}
  puts @string
end

menu