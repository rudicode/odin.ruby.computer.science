# https://www.theodinproject.com/courses/ruby-programming/lessons/recursion
#
# Assignment #1
#

def fibs(n)
  return 0 if n == 0
  return 1 if n <= 2
  sum = sum_pre = 1
  (3..n).each do |count|
    x = sum
    sum = sum_pre + sum
    sum_pre = x
  end
  sum
end

def fibs_rec(n)
  return 0 if n <= 0
  return 1 if n <= 2
  fibs_rec(n-1) + fibs_rec(n-2)
end

(1..20).each do |count|
  puts "Num: #{count} : fibs: #{fibs(count)}"
end

(1..20).each do |count|
  puts "Num: #{count} : fibs_rec: #{fibs_rec(count)}"
end
