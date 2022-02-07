people = ARGV

raise ArgumentError, '4 players required' if people.length < 4

team_a, team_b = people.shuffle.each_slice((people.size/2.0).round).to_a

puts "Blue Team Spymaster: #{team_a.shift}"
puts "Blue Team Operative(s): #{team_a.join(', ')}"

puts "Red Team Spymaster: #{team_b.shift}"
puts "Red Team Operative(s): #{team_b.join(', ')}"