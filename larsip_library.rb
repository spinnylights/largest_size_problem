require 'rainbow'

def complexity(funct, limit)
  n = 1

  while n do
   if (eval funct.gsub(/n/, "#{n}")) > limit
    return n - 1
    break
   end 

   n+=1
  end
end

def complexity_by_time(funct, ops_per_second)
  runtimes = {:milisecond => 0.0001,
              :second  => 1,
              :minute  => 60,
              :hour    => 360,
              :day     => 8640,
              :month   => 276480,
              :year    => 100915200,
              :century => 10091520000}
  runtimes.each do |r, x|
    puts "#{r}: " + "#{complexity(funct, x*ops_per_second)}".bright
  end
end
