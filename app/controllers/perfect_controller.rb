class PerfectController < ApplicationController

  def input
  end

  def output
    @n = params[:p1].to_i
    if @n <= 0
      @a = 0
    else
      @a = 1
    end
    if @a == 1
      str = params[:p2]
      arr = str.split(' ')
      @arr1 = Array.new
      if arr.size < @n
        for i in 0...arr.size do
          @arr1.push(arr[i])
        end
        for i in arr.size...@n do
          @arr1.push(0)
        end
      else
        for i in 0...@n do
          @arr1.push(arr[i].to_i)
        end
      end
      @parr = Array.new
      j = 0
      k = 0
      @max = 0
      @parr[j] = Array.new
      for i in 0...@arr1.size do
        if pft(@arr1[i]) && !pft(@arr1[i-1]) && i>0
          @parr[j] = Array.new
        end
        if pft(@arr1[i])
          @parr[j].push(@arr1[i])
          k += 1
        end
        if !pft(@arr1[i]) && pft(@arr1[i-1]) && i>0
          j += 1
          if @max <= k
            @max = k
          end
          k = 0 
        end
      end
    end
  end

def pft(n)
  x = n.to_i
  if x == 0
    return false
  else
    a = 0
    for i in 1...x do
      if x%i == 0
        a += i
      end
    end
    if a == x
      return true
    else
      return false
    end
  end
end

end