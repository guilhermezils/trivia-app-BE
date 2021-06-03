Game.destroy_all
Game.reset_pk_sequence

Team.destroy_all
Team.reset_pk_sequence

Player.destroy_all
Player.reset_pk_sequence



Team.create(name: " ", score: 0)
Team.create(name: " ", score: 0)

8.times do
  Player.create(name:" ") 
end

Game.create(team_id: 1, player_id:1)
Game.create(team_id: 1, player_id:2)
Game.create(team_id: 1, player_id:3)
Game.create(team_id: 1, player_id:4)
Game.create(team_id: 2, player_id:5)
Game.create(team_id: 2, player_id:6)
Game.create(team_id: 2, player_id:7)
Game.create(team_id: 2, player_id:8)





# def request_api(url)
#     response = Excon.get(
#       url,
#       headers: {
#         'Host' => URI.parse(url).host
#       }
#     )
#     return nil if response.status != 200
#     parsed = JSON.parse(response.body)
#     new_array = parsed.map {|question| question}[1]
#     puts new_array
#   end
  

#1. One trivia question:
#   "results":[{"category":"Entertainment: Books",
#   "type":"multiple",
#   "difficulty":"hard",
#   "question":"In the book &quot;The Martian&quot;, how long was Mark Watney trapped on Mars (in Sols)?",
#   "correct_answer":"549 Days",
#   "incorrect_answers":["765 Days","401 Days","324 Days"]}

# def token
#   token = "https://opentdb.com/api_token.php?command=request"
# end

# def get_questions #only up to 50
#     request_api(
#     "https://opentdb.com/api.php?amount=10&9ab50eaf47b21fb8f88c48ced2eb37aae307a1a115a5cf3f2aa00fadeb3be984"
#     )
# end


# questions = get_questions
# questions.each do |recipe|
            
#   question_entry = Question.create(
#     category: category["category"], 
#     type: type["type"], 
#     difficulty: difficulty["difficulty"], 
#     question: question["question"],
#     correct_answer: correct_answer["correct_answer"],
#     incorrect_answers: incorrect_answers["incorrect_answers"]
#    )


