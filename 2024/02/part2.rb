def safe_values(value_set)
  set = value_set.each_cons(2).map { _1 - _2 }
  set.all? { (1..3) === _1 } || set.all? { (-3..-1) === _1 }
end

p ARGF.map { |line| line.split.map(&:to_i) }
      .count { |set|
        Array(safe_values(set) || set.map.with_index { |i, iidx|
          safe_values(set.reject.with_index { |n, nidx| nidx == iidx })
        }).any?(true)
      }
