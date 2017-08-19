# tic tac toe
# 3 *3
def printing(arr)
  for i in 0...3
    print arr[i]
    print " "
  end
  puts
  for i in 3...6
    print arr[i]
    print " "
  end
  puts
  for i in 6...9
    print arr[i]
    print " "
  end
  puts
end

def horizontal?(a,b,c,arr)
  if arr[a]==arr[b]
    if arr[b]==arr[c]
      if arr[0] != "O"
        print "Winner"
      end
    end
  end
end
def is_horiz(arr)
  horizontal?(0,1,2,arr)
  horizontal?(3,4,5,arr)
  horizontal?(7,8,9,arr)
end

def vertical?(a,arr)
  if arr[a]==arr[a+3]
   if arr[a+3]==arr[a+6]
     if arr[a] != "O"
      print "Winner"
     end
   end
  end
end

def is_vertical?(arr)
  vertical?(0,arr)
  vertical?(1,arr)
  vertical?(2,arr)
end
nums = ["0","1","2","3","4","5","6","7","8"]
puts "Enter X or O num"
printing(nums)

arr = ["O","O","O","O","O","O","O","O","O"]

for i in 1...9
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
end
