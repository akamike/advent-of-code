p ARGF.map { _1.scan(/\d+/).map(&:to_i) }
      .transpose
      .yield_self { |cols| cols.first.map { [_1, cols.last.count(_1)] } }
      .sum { _1 * _2 }
