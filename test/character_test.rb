require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'

class CharacterTest < MiniTest::Test

  def test_it_exists

    kitt = Character.new({name: "KITT",
                          actor: "William Daniels",
                          salary: 1_000_000})

    assert_instance_of Character, kitt
  end

  def test_it_has_a_name

    kitt = Character.new({name: "KITT",
                          actor: "William Daniels",
                          salary: 1_000_000})

    assert_equal "KITT", kitt.name
  end

  def test_it_has_an_actor

    kitt = Character.new({name: "KITT",
                          actor: "William Daniels",
                          salary: 1_000_000})

    assert_equal "William Daniels", kitt.actor
  end

  def test_it_has_a_salary
    kitt = Character.new({name: "KITT",
                          actor: "William Daniels",
                          salary: 1_000_000})

    assert_equal 1000000, kitt.salary

  end
end
