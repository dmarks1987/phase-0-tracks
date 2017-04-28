nba_playoffs = {
	western_conference: {
		series_1:  {
			num_1_seed: "Warriors",
			num_8_seed: "Trail Blazers"
			},
		series_2:  {
			num_4_seed: "Clippers",
			num_5_seed: "Jazz"
			},
		series_3:  {
			num_3_seed: "Rockets",
			num_6_seed: "Thunder"
			},
		series_4:  {
			num_2_seed: "Spurs",
			num_7_seed: "Grizzlies"
			}
		}, 
	eastern_conference: {
		series_1: {
			num_1_seed: "Celtics",
			num_8_seed: "Bulls"
			},
		series_2: {
			num_4_seed: "Wizards",
			num_5_seed: "Hawks"
			},
		series_3: {
			num_3_seed: "Raptors",
			num_6_seed: "Bucks"
			},
		series_4: {
			num_2_seed: "Cavaliers",
			num_7_seed: "Pacers"
			}
		}, 
}

puts "-----Here is the entire NBA playoff picture-----"
nba_playoffs.each do |conference|
  puts conference
  puts"-----"
end

puts "----Here are the Western Conference Matchups----"
puts "Series 1: #{nba_playoffs[:western_conference][:series_1][:num_1_seed]} vs #{nba_playoffs[:western_conference][:series_1][:num_8_seed]}"
puts "Series 2: #{nba_playoffs[:western_conference][:series_2][:num_4_seed]} vs #{nba_playoffs[:western_conference][:series_2][:num_5_seed]}"
puts "Series 3: #{nba_playoffs[:western_conference][:series_3][:num_3_seed]} vs #{nba_playoffs[:western_conference][:series_3][:num_6_seed]}"
puts "Series 4: #{nba_playoffs[:western_conference][:series_4][:num_2_seed]} vs #{nba_playoffs[:western_conference][:series_4][:num_7_seed]}"

puts "----Here are the Eastern Conference Matchups----"
puts "Series 1: #{nba_playoffs[:eastern_conference][:series_1][:num_1_seed]} vs #{nba_playoffs[:western_conference][:series_1][:num_8_seed]}"
puts "Series 2: #{nba_playoffs[:eastern_conference][:series_2][:num_4_seed]} vs #{nba_playoffs[:western_conference][:series_2][:num_5_seed]}"
puts "Series 3: #{nba_playoffs[:eastern_conference][:series_3][:num_3_seed]} vs #{nba_playoffs[:western_conference][:series_3][:num_6_seed]}"
puts "Series 4: #{nba_playoffs[:eastern_conference][:series_4][:num_2_seed]} vs #{nba_playoffs[:western_conference][:series_4][:num_7_seed]}"

puts "--------FINALS PREDICTION--------"
puts "It is predicted that the #{nba_playoffs[:eastern_conference][:series_4][:num_2_seed]} will play the #{nba_playoffs[:western_conference][:series_1][:num_1_seed]} in the NBA Finals"
