require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'
require './lib/show'
require './lib/network'

class NetworkTest < MiniTest::Test

def test_it_exists
  skip
  nbc = Network.new("NBC")

  assert_instance_of Network, network
end

def test_it_has_a_name
  skip
  nbc = Network.new("NBC")

  assert_equal "NBC", network.name
end

def test_it_starts_with_zero_shows
  skip
  nbc = Network.new("NBC")

  assert_equal [], network.shows
end

def test_it_can_add_shows
  skip
  nbc = Network.new("NBC")

  michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
  kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
  knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])

  leslie_knope = Character.new({name: "Leslie Knope", actor: "Amy Poehler", salary: 2_000_000})
  ron_swanson = Character.new({name: "Ron Swanson", actor: "Nick Offerman", salary: 1_400_000})
  parks_and_rec = Show.new("Parks and Recreation", "Michael Shur & Greg Daniels", [leslie_knope, ron_swanson])

  nbc.add_show(knight_rider)
  nbc.add_show(parks_and_rec)

  assert_equal [knight_rider, parks_and_rec], nbc.shows
end

def it_can_calculate_highest_paid_actor
  skip
  nbc = Network.new("NBC")

  michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
  kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
  knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])

  leslie_knope = Character.new({name: "Leslie Knope", actor: "Amy Poehler", salary: 2_000_000})
  ron_swanson = Character.new({name: "Ron Swanson", actor: "Nick Offerman", salary: 1_400_000})
  parks_and_rec = Show.new("Parks and Recreation", "Michael Shur & Greg Daniels", [leslie_knope, ron_swanson])

  nbc.add_show(knight_rider)
  nbc.add_show(parks_and_rec)

  assert_equal "Amy Poehler", nbc.highest_paid_actor

end

end
