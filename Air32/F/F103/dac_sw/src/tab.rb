#!/usr/bin/ruby

#p Math.cos(0.0)
#p Math.cos(Math::PI)

x = Array.new(32)
step = 32.0
for i in 1..32 do
  tmp = (i-1.0) / step
  x[i-1] = Math.sin ((Math::PI / 2.0) * tmp)
end
p x
