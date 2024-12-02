p ARGF.map { _1.scan(/\d+/).map(&:to_i) }
      .transpose
      .yield_self { _1.first.sort.zip(_1.last.sort) }
      .sum { (_1 - _2).abs }
