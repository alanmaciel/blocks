class Flyer
  attr_reader :name, :email, :miles_flown

  def initialize(name, email, miles_flown)
    @name = name
    @email = email
    @miles_flown = miles_flown
  end

  def to_s
    "#{name} (#{email}): #{miles_flown}"
  end
end

flyers = []

1.upto(5) do |n|
  flyers << Flyer.new("Flyer #{n}", "flyer#{n}@example.com", n * 1000) 
end

flyers.each do |flyer|
  puts "#{flyer.name} - #{flyer.miles_flown} miles"
end

sum = 0

flyers.each do |flyer|
  sum += flyer.miles_flown
end

puts "Total miles flown: #{sum}"

promotions = { "United" => 1.5, "Delta" => 2.0, "Lufthansa" => 2.5 }

promotions.each do |airline, miles|
  puts "Earn #{miles}x miles by flying #{airline}!"
end

flyers.each do |flyer|
  promotions.each do |airline, multiplier|
    puts "#{flyer.name} could earn #{flyer.miles_flown * multiplier} miles  by flying #{airline}!"
  end
end


