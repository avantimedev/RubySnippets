#!/usr/bin/env ruby

# Splitter -- Split CSV-files into array

file = ARGV[0]
sep = ARGV[1]

if (!/^\W$/.match(sep)) 
  puts "ERROR: Separator not supported: #{sep}"
  exit(-1)
end

if !File.exist? file
  puts "ERROR: File not found: #{file}"
  exit(-1)
end

infile = File.open(file, 'r')
puts "Content of file: #{file}"
puts "--------"
while (line = infile.gets)
  puts line.split(sep)
  puts "--------"
end

exit(0)