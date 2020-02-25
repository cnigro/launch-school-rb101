# Mad libs are a simple game where you create a story template with blanks for
# words. You, or another player, then construct a list of words and place them
# into the story, creating an often silly or funny story as a result.

# Create a simple mad-lib program that prompts for a noun, a verb, an adverb,
# and an adjective and injects those into a story that you create.

puts "Enter a noun:"
noun = gets.chomp
puts "Enter a verb:"
verb = gets.chomp
puts "Enter an adjective:"
adj = gets.chomp
puts "Enter an adverb:"
adv = gets.chomp

puts "Some years ago—never mind how long precisely—having little or no #{noun}
      in my purse, and nothing #{adj} to interest me on shore, I thought 
      I would #{verb} about #{adv} and see the watery part of the world."

