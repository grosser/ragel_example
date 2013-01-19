require 'rubygems'
require './mdlist_parser.rb' 

class MDList
  
  def initialize(filename) 
      contents = File.open(filename, 'r') { |f| f.read }   
      lexer_lists = MDListParser.new(contents.to_str.gsub('\n',"\n"))
      puts lexer_lists
      lexer_lists.lists.each do |list| 
        	puts "Tasks:"
      		list[:items].each do |item|
      		  puts  "-".rjust(4*item[:level]) + item[:title] + " : (" + item[:level].to_s + ")"
      		  item[:description].split(/\r?\n/).each  do |l| 
      		     puts " ".rjust(4*item[:level]) + l.strip 
      		  end  
      		end 
        end

  end 
   
end
  
