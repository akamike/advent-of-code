puts ARGF.sum { |line|
  line.scan(/\d/)
      .values_at(0, -1)
      .join
      .to_i
}
