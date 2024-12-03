p ARGF.map { |line| line.split.map(&:to_i).each_cons(2).map { _1 - _2 } }
      .filter { _1.all? { |n| (1..3) === n } || _1.all? { |n| (-3..-1) === n } }
      .count
