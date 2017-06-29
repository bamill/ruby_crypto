#!/usr/bin/env ruby

def rot(x)
  return lambda { |k| k.chars.map do |c|
                    ((c.ord - 65 + x) % 26 + 65).chr if c.ord >= 65 and c.ord <= 90
                    ((c.ord - 97 + x) % 26 + 97).chr if c.ord >= 97 and c.ord <= 122
                  end
  }
end
