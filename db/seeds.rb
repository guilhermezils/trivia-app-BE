
# TEAMS ----- GAME-----Players          ---X----    TRIVIA_Questions
# TEAMS: Team 1 (players), Team 2 (Players)
# GAME:
# Team1_id + Score
# Team2_id + Score


Team.create(name: "Red")
Team.create(name: "Blue")

20.times do
  Player.create(name:" ") 
end

Game.create(team_id: 1, player_id:1)
Game.create(team_id: 1, player_id:2)
Game.create(team_id: 1, player_id:3)
Game.create(team_id: 1, player_id:4)
Game.create(team_id: 1, player_id:5)
Game.create(team_id: 1, player_id:6)
Game.create(team_id: 1, player_id:7)
Game.create(team_id: 1, player_id:8)
Game.create(team_id: 1, player_id:9)
Game.create(team_id: 1, player_id:10)
Game.create(team_id: 2, player_id:11)
Game.create(team_id: 2, player_id:12)
Game.create(team_id: 2, player_id:13)
Game.create(team_id: 2, player_id:14)
Game.create(team_id: 2, player_id:15)
Game.create(team_id: 2, player_id:16)
Game.create(team_id: 2, player_id:17)
Game.create(team_id: 2, player_id:18)
Game.create(team_id: 2, player_id:19)
Game.create(team_id: 2, player_id:20)




# def request_api(url)
#     response = Excon.get(
#       url,
#       headers: {
#         'Host' => URI.parse(url).host
#       }
#     )
#     return nil if response.status != 200
#     parsed = JSON.parse(response.body)
#     new_array = parsed.map { |question| question }#[0] # looks like ["meals", [{recipe 1},{recipe 2}]]  
#     new_array[1]
# end


#1. One trivia question:
#   "results":[{"category":"Entertainment: Books",
#   "type":"multiple",
#   "difficulty":"hard",
#   "question":"In the book &quot;The Martian&quot;, how long was Mark Watney trapped on Mars (in Sols)?",
#   "correct_answer":"549 Days",
#   "incorrect_answers":["765 Days","401 Days","324 Days"]}



def find_questions(amount) #only up to 50
    request_api(
    "https://opentdb.com/api.php?amount=#{amount}"
    )
end

#2. Categories

# {"trivia_categories":[{"id":9,"name":"General Knowledge"},
# {"id":10,"name":"Entertainment: Books"},
# {"id":11,"name":"Entertainment: Film"},
# {"id":12,"name":"Entertainment: Music"},
# {"id":13,"name":"Entertainment: Musicals & Theatres"},
# {"id":14,"name":"Entertainment: Television"},
# {"id":15,"name":"Entertainment: Video Games"},
# {"id":16,"name":"Entertainment: Board Games"},
# {"id":17,"name":"Science & Nature"},
# {"id":18,"name":"Science: Computers"},
# {"id":19,"name":"Science: Mathematics"},
# {"id":20,"name":"Mythology"},
# {"id":21,"name":"Sports"},
# {"id":22,"name":"Geography"},
# {"id":23,"name":"History"},
# {"id":24,"name":"Politics"},
# {"id":25,"name":"Art"},
# {"id":26,"name":"Celebrities"},
# {"id":27,"name":"Animals"},
# {"id":28,"name":"Vehicles"},
# {"id":29,"name":"Entertainment: Comics"},
# {"id":30,"name":"Science: Gadgets"},
# {"id":31,"name":"Entertainment: Japanese Anime & Manga"},
# {"id":32,"name":"Entertainment: Cartoon & Animations"}]}

# def get_categories()
#     request_api(
#         "https://opentdb.com/api_category.php"
#     )
# end

# puts "Getting the Categories!"

