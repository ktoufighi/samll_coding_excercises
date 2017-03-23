# second way only writing a method

def fibSeq(n)

  a = [0]

  n.times do |i|
    if i==0
      a[i] = 0
    elsif i==1
      a[i] = 1
    else
      a[i] = a[i-1] + a[i-2]
    end
  end

  return a[n-1]
end

puts fibSeq(120)


# second way nusing a class

class FiboGenarator
  def fibSeq(size)
    x1,x2 = 0, 1

    0.upto(size){ puts x1;x1+=x2; x1,x2= x2,x1}
  end
  f = FiboGenarator.new
  f.fibSeq(12)
end
