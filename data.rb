f = File.new('./banklist.csv', 'r')
data_string = f.read
f.close

array = data_string.split "\r\n"


sum = 0
array.each do |data_point|
  data_value = data_point.split(",")[3]
  data_value = data_value.to_i
  sum = data_value + sum
end

sum = sum.to_i
puts "Average:"
puts sum / 263