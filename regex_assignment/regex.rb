require 'csv'
class Regex1

  def reg
    original ="travel_insurance.html"
    temporary = "temporary.txt"
     data = File.read(original)
     edited_file = data.gsub(/<\/?[^>]+>/,'  ')
     remove_quotes = edited_file.chomp('"')
      add_space = remove_quotes .gsub("&quot;"," ")
     output = File.open(temporary, 'w') {|f| f.write(add_space) }
  end

  def give_space
    add_space = "temporary.txt"
    add_space = [ array1, array2, array3, array4, array5, array6, array7, array8, array9].transpose
    CSV.open('csvfile.csv', 'ab') do |csv|
    table.each do |row|
       csv << row
      end
     end
  end
  #def give_space
   #File.open("temporary.txt") do |f|
    ##ary = line.split
    #end
  #end

end

r=Regex1.new
r.reg
r.give_space
