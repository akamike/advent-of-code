EXP = /(\d+)? (blue|red|green)/

puts ARGF.sum { |line|
  line.scan(EXP).each_with_object({}) { |(count, colour), h|
    h[colour] = (h[colour] || []) << count.to_i
  }.values.map(&:max).reduce(:*)
}
