require 'pry'
require_relative '../src/dice.rb'

describe Dice do

  it "should respond to #new" do
    expect(Dice).to respond_to(:new)
  end

  describe "instances" do

    it "should respond to #roll" do
      expect(Dice.new).to respond_to(:roll)
    end

    it "should always roll a value in [1..6]" do
      dice = Dice.new
      valid_faces = (1..6).to_a
      1000.times do
        expect(valid_faces.include?(dice.roll)).to be(true)
      end
    end
  end

end