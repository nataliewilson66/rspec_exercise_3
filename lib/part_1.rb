def is_prime?(num)
  if num < 2
    return false
  end
  (2...num).each do |factor|
    if num % factor == 0
        return false
    end
  end
  true
end

def nth_prime(n)
  primes = []
  (2..n * 10).each do |num|
    if is_prime?(num)
        primes << num
    end
    if primes.length == n
        return primes[n - 1]
    end
  end
end

def prime_range(min, max)
  primes = []
  (min..max).each do |num|
    primes << num if is_prime?(num)
  end
  primes
end

