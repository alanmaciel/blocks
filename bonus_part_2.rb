file = File.open("poem.txt")
file.each { |line| puts line }

dir = Dir.new("/Users/maciel")
dir.each { |entry| puts entry }

