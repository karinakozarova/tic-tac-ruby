def printing(arr)
  for a in 0..2
    for i in a*3...a*3+3
      print arr[i]
      print " "
    end
    puts
  end
end
def initial_mssg()
  nums = ["0","1","2","3","4","5","6","7","8"]
  puts "Enter X or O num"
  printing(nums)
end

def horizontal?(a,arr)
  if arr[a]==arr[a+1] && arr[a+1]==arr[a+2]
        print "Winner"
        $pigi_lof = 1
  end
end
def is_horiz(arr)
  horizontal?(0,arr)
  horizontal?(3,arr)
  horizontal?(7,arr)
end

def vertical?(a,arr)
  if arr[a]==arr[a+3] && arr[a+3]==arr[a+6]
        print "Winner"
        $pigi_lof = 1
  end
end
def is_vertical?(arr)
  vertical?(0,arr)
  vertical?(1,arr)
  vertical?(2,arr)
end

def is_diagonal?(arr)
  if ((arr[0] == arr[4]) && (arr[4] == arr[8])) && (arr[0] != "O")
    print "Winner"
    $pigi_lof = 1
  end

  if ((arr[2] == arr[4]) && (arr[4] == arr[6])) && (arr[2] != "O")
    print "Winner"
    $pigi_lof = 1
  end
end

initial_mssg()
arr = ["0","1","2","3","4","5","6","7","8"]

for i in 0...8
  input = gets.chomp.to_i
  puts input
  if i%2==1
    arr[input] ="X"
  else
    arr[input] ="Y"
  end
  printing(arr)
  is_horiz(arr)
  is_vertical?(arr)
  is_diagonal?(arr)
  if $pigi_lof == 1
    break
  end
end
