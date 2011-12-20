class Person
	def initialize(name, email)
		@name = name;
		@email = email;
	end

	def to_s
		@name + ", " + @email
	end
end

def print_helllo
	puts "Hello World!"
end

COLORS = {	:black	=> "000",
			:red	=> "f00",
			:green	=> "0f0" }

COLORS.each do |color, code|
	puts "#{color}:\t#{code}"
end

a = "1234567890".split(//)
puts "#{a}"

#print "1234567890".split(//).shuffle.join
b = "12312321".split(//).collect! {|i| i.to_f}.join(', ')
puts "#{b}"

c = "1;apan;1.21"
d = c.split(/;/)
puts "#{d.join(', ')}"

e = Array.new
e.push("hej")
e.push("huj")
puts e.pop
puts e.pop

p = Person.new("johan", "johan@baminfo.se")

puts p

t1 = Thread.new do
	puts "In new thread"
	raise "Exception from thread"
end

sleep(1)
puts "apappapaa"

puts File.atime("file")

File.open("file", 'r') {|f| puts f.read }

File.open("file", 'r') do |f|
	puts f.read 
end


#puts gets

file = File.new("new", "w")
if file
	file.puts("dsads")
end

a = "123321".split(//)
a.each do |f|
	puts f
end

puts "abcda".split(//).flatten.uniq.join(", ")

print_helllo

Dir.open(Dir.pwd).each do |filename|
	next if File.directory? filename
	puts "File: #{filename}"
end

if /\d+ \+ \d+ = \d+\?/.match('1 + 22 = 3?')
	puts 'Match'
end

puts "Johan".upcase
puts "Johan".capitalize
puts "Johan".downcase
