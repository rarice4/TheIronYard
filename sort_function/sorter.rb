a = [3,4,6,1,3,6,7,8,9,2,4,5,6,7,10,146,3,4,7,8,74]
def srt ary
  new_ary = []
  print "Original Array "
  print ary
  while ary.count > 0
    if ary.count > 0 
      new_ary.push(ary.min)
      if ary.count(ary.min) > 1
      x = ary.count(ary.min)
      z = ary.min
      ary.delete(ary.min)
      (x - 1).times{ary.push(z)}
      else
        ary.delete(ary.min)
      end  
    else
    end
  end
  puts
  print "Sorted Array"
  print new_ary
end

srt a