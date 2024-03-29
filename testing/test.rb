class Person
  attr_reader :name
  attr_reader :email
	def initialize(name, email)
		@name = name;
		@email = email;
	end

	def to_s
		@name + ", " + @email
	end
	
	def ==(comparison_object)
	  super || 
	  comparison_object.instance_of?(self.class) &&
	  comparison_object.name == name &&
	  comparison_object.email == email
  end
  alias :eql? :==
  
end

class Boss < Person
	def to_s
		"Boss: " + @name + ", " + @email
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
p2 = Person.new("johan", "johan@baminfo.se")
z = Boss.new("johan", "johan@baminfo.se")
puts p
puts z

puts p == p2
puts p.eql? p2

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

puts Math.sin(1)
puts Math.cos(1)

module Trig
	PI = 3.141592654
	def Trig.hello_world
		puts "Hello World!"	
	end
end

puts Trig::PI/4
Trig.hello_world

require 'date'

dt = Date.new(2001,2,3)
puts dt

dt2 = Date.parse('2001-01-01')
puts dt2

dtt = DateTime.new(2001,2,3.5)
puts dtt
puts dtt.strftime('%Y-%m-%d %I:%M:%S %p')
puts Date.commercial(2012)

print "43278".split(//).collect! {|i| i.to_i}.sort.join(", ") + "\n"
print "12345".split(//).collect! {|i| i.to_i ** 2}.join(", ") + "\n"

class TestStatic
  class << self
    def value_of obj
      obj.to_s
    end
  end
end

puts TestStatic.value_of 42 

class StateMachineExample
  def process obj
    process_hook obj
  end

private
  def process_state_1 obj
    # ...
    class << self
      puts "State 1"
      alias process_hook process_state_2
    end
  end

  def process_state_2 obj
    # ...
    class << self
      puts "State 2"
      alias process_hook process_state_1
    end
  end

  # Set up initial state
  alias process_hook process_state_1
end

s = StateMachineExample.new
s.process(1)
s.process(1)
s.process(1)