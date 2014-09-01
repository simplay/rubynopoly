#!/usr/bin/env jruby

require "rubygems"
require "imageruby"
require "pry"
require 'optparse'
require_relative 'src/game.rb'

Version = "0.0.1"

user_args = {}
opt_parser = OptionParser.new do |opt|
  opt.banner = "Usage example: ruby rabpt.rb -p 4 -m 1000"
                
  opt.separator  ""

  opt.on("-p", "--players P", Integer, "the number of players") do |player|
    user_args[:players] = player
  end
  opt.on("-m", "--money MONEY", Integer, "start money") do |money|
    user_args[:money] = money
  end
  
  opt.on_tail("-h", "--help", "Show this message") do
    puts opt
    exit
  end
  opt.on_tail("--version", "Show version") do
    puts "rabpt #{Version}"
    exit
  end

end
begin 
  opt_parser.parse!
  required_args = [:players, :money]
  required_args.each do |arg|
    raise OptionParser::MissingArgument if user_args[arg].nil?
  end
rescue OptionParser::MissingArgument
  puts "Incorrect input argument(s) passed\n"
  puts opt_parser.help
  exit
end

Game.new user_args
