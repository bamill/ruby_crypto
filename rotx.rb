#!/usr/bin/env ruby

def low_rot c,y
  if c.ord >= 65 and c.ord <= 90
    return ((c.ord - 65 + y) % 26 + 65).chr
  else
    return c
  end
end

def hi_rot c,y
  if c.ord >= 97 and c.ord <= 122
    return ((c.ord - 97 + y) % 26 + 97).chr
  else
    return c
  end
end

def alpha_rot
  return Proc.new {|c,y| low_rot hi_rot(c,y),y}
end

def ascii_rot
  return Proc.new {|c,y| ((c.ord + y) % 128).chr }
end

def wingdings_rot
  return Proc.new {|c,y|  ((((c.ord + y) % 128).to_s(16).hex + "2280".hex)).chr('UTF-8')}
end

def emote_rot
  return Proc.new { |c,y| ((((c.ord + y) % 128).to_s(16).hex + "1F600".hex)).chr('UTF-8') }
end

def rot(x,f=alpha_rot)
  return lambda { |k| (k.chars.map { |c| f.call(c,x) }).join("") }
end
