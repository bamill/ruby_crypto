#!/usr/bin/env ruby

def frequency text
  return text.split.join("").chars.reduce(Hash.new(0)) { |x,y| x.update(y => x[y] + 1) }
end

def digraph_frequency text
  return text.split.join("").chars.each_cons(2).map(&:join).reduce(Hash.new(0)) { |x,y| x.update(y => x[y] + 1)}
end

puts frequency ARGV[0]
puts digraph_frequency ARGV[0]
