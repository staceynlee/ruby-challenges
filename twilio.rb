# Setup of twilio-ruby REST API
require 'rubygems'
require 'twilio-ruby'

account_sid = "AC716a77edb3e480bea92e948d4e7696d0"
auth_token = "b5bb8b8044c911fbe0a702da694e881f"
 
@client = Twilio::REST::Client.new(account_sid, auth_token)

# Send text message
message = @client.account.messages.create(
  :from => "+18654091126", 
  :to =>"+18655487598", 
  :body => "Haaaii!"
)
 
puts message.to

# Accept a question for the 8-Ball
puts "What is your \"Yes/No\" question?"
question = gets.chomp

# Magic-8-Ball List of Possible Answers
possible_answers = ["It is certain",
    "It is decidedly so",
    "Without a doubt",
    "Yes definitely",
    "You may rely on it",
    "As I see it, yes",
    "Most likely",
    "Outlook good",
    "Yes",
    "Signs point to yes",
    "Reply hazy try again",
    "Ask again later",
    "Better not tell you now",
    "Cannot predict now",
    "Concentrate and ask again",
    "Don't count on it",
    "My reply is no",
    "My sources say no",
    "Outlook not so good",
    "Very doubtful"]

# Generate a random answer
magic_answer = possible_answers[rand(0..19)]

# Send 8-ball text message
message = @client.account.messages.create(
    :from => "+18654091126", 
 	:to =>"+18655487598",
    :body => "You asked: #{question} The Magic 8-Ball says: #{magic_answer}"
    )

# Print message to terminal
puts "The following message was texted to #{message.to}:"
puts message.body