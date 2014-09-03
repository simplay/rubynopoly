require 'pry'
require_relative '../src/player_list.rb'

describe PlayerList do

  before(:each) do
    @player_count = 3
    @player_list = PlayerList.new({:players => @player_count, :money => 1000})
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

  it "should respond to #remove" do
    expect(@player_list).to respond_to(:has_competing_players?)
  end

  describe "#next method" do
    it "should be cyclic" do
      (@player_count).times do
        current = nil
        first = @player_list.next
        (@player_count).times do
          current = @player_list.next
        end
        expect(current).to be(first)
      end
    end

    describe "removing all players except one" do
      it "should result in having no competing player" do
        (@player_count).times do
          first = @player_list.current
          @player_list.remove(first)
        end
        expect(@player_list.has_competing_players?).to be(false)
      end
    end

  end


 end