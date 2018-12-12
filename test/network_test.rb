require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'
require './lib/show'
require './lib/network'
require 'pry'

class NetworkTest < MiniTest::Test

def test_it_exists

  nbc = Network.new("NBC")

  assert_instance_of Network, nbc
end

def test_it_has_a_name

  nbc = Network.new("NBC")

  assert_equal "NBC", nbc.name
end

def test_it_starts_with_zero_shows
  nbc = Network.new("NBC")

  assert_equal [], nbc.shows
end

def test_it_can_add_shows

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

def test_it_can_calculate_highest_paid_actor

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

def test_it_has_payroll
  nbc = Network.new("NBC")

  michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
  kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
  knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])

  leslie_knope = Character.new({name: "Leslie Knope", actor: "Amy Poehler", salary: 2_000_000})
  ron_swanson = Character.new({name: "Ron Swanson", actor: "Nick Offerman", salary: 1_400_000})
  parks_and_rec = Show.new("Parks and Recreation", "Michael Shur & Greg Daniels", [leslie_knope, ron_swanson])

  nbc.add_show(knight_rider)
  nbc.add_show(parks_and_rec)

  expected = {"David Hasselhoff" => 1600000, "William Daniels" => 1000000, "Amy Poehler" => 2000000, "Nick Offerman" => 1400000}

  assert_equal expected, nbc.payroll
end

end
