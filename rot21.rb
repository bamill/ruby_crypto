#!/usr/bin/env ruby

require_relative 'rotx.rb'

def rot21 x
  return rot(21).call(x)
end

puts rot21(ARGV[0])
