def fibs(num)
  return 0 if num.zero?
  return 1 if num == 1
  result = [0, 1]
  0.upto(num - 2) { result.push(result[-1] + result[-2]) }
  result
end
