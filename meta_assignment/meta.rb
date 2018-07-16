require "csv"

puts "enter filename"
input=gets.chomp
input_1=input.capitalize

input_1 = Class.new do


  def create_attributes
    file_name="small.csv"
    csv_data = CSV.read file_name
    headers = csv_data.shift.map {|i| i.to_s }
    string_data = csv_data.map {|row| row.map {|cell| cell.to_s } }
    array_of_hashes = string_data.map {|row| Hash[*headers.zip(row).flatten] }
    puts "attributes created=#{headers.to_s}"
    puts array_of_hashes
  end

end
array_of_hashes=input_1.new
array_of_hashes.create_attributes


