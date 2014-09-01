require 'pry'
require_relative '../src/player_list.rb'

describe PlayerList do

  before do
    @player_list = PlayerList.new({:players => 1, :money => 1000})
  end

  it "should respond to #new" do
    expect(PlayerList).to respond_to(:new)
  end

  it "should respond to #next" do
    expect(@player_list).to respond_to(:next)
  end

  it "should respond to #remove" do
    expect(@player_list).to respond_to(:remove)
  end

 end