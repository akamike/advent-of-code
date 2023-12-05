NUM_MAP = %w(
  one two three four five six seven eight nine
).map.with_index(1).to_h
EXP = "(#{NUM_MAP.keys.join("|")}|\\d)"

puts ARGF.sum { |line|
  [
    line[/#{EXP}.*/, 1],
    line[/.*#{EXP}/, 1]
  ].map { |s| NUM_MAP[s] || s }
   .join
   .to_i
}
