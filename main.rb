require 'pp'
require 'active_support/all'
require_relative 'candidates'
require_relative 'filters'

# List out the candidates
pp @candidates

# Test experienced? method
candidate = @candidates.first
puts "Is the first candidate experienced? #{experienced?(candidate)}"

# Find a candidate by ID
candidate_id = 1 # Use a real ID from your candidates
candidate = find(candidate_id)
if candidate
  puts "Found candidate with ID #{candidate_id}:"
  pp candidate
else
  puts "No candidate found with ID #{candidate_id}."
end

# List out the qualified candidates
qualified_list = qualified_candidates(@candidates)
puts "Qualified candidates:"
pp qualified_list