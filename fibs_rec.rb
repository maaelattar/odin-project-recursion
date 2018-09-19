def fibs_rec(num)
  return 0 if num.zero?
  return 1 if num == 1
  fibs_rec(num - 1) + fibs_rec(num - 2)
end
