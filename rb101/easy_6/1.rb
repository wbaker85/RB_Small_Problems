DEGREE = "\xC2\xB0"

def dms(angle)
  angle = angle % 360
  degrees, remainder = angle.divmod(1)
  minutes, remainder = (remainder * 60).round(2).divmod(1)
  seconds = (remainder * 60).round

  "#{degrees}#{DEGREE}#{format('%02.0f', minutes)}'#{format('%02.0f', seconds)}"""
end


p dms(30)
p dms(76.73)
p dms(254.6)
p dms(93.034773)
p dms(0)
p dms(360)

p dms(400)
p dms(-40)
p dms(-420)