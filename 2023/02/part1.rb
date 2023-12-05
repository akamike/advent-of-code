CUBES = { 'red' => 12, 'green' => 13, 'blue' => 14 }
EXP = /(\d+)? (blue|red|green)/

puts ARGF.readlines.keep_if { |line|
  line.scan(EXP).none? do |pick|
    pick[0].to_i > CUBES[pick[1]]
  end
}.sum { |l| l[/\d+/].to_i }
