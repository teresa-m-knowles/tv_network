require './lib/character'
require 'pry'

class Show

  attr_reader :name,
              :creator,
              :characters,
              :total_salary


  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    @characters.inject(0) do |sum, character|
      sum + character.salary
    end
  end


end
