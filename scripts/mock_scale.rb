require File.dirname(__FILE__) + '/../lib/helpers.rb'


loop do
  get_data
  puts "Type to simulate scale output:"
  weight = gets.strip.to_i
  if (weight.to_f > (@data[:weight].to_f * 1.1)) and (weight > @data[:empty_weight])
    puts "Looks like the teapot's been filled again."
    set_data({:weight => weight, :last_filled => Time.now},true)
  else
    set_data({:weight => weight},true)
  end
end
