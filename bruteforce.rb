#!/usr/bin/env ruby

require_relative 'rotx.rb'

(1..26).collect do |x|
  puts rot(x).call(ARGV[0])
end
