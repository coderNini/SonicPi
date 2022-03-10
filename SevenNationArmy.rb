# Seven Nation Army by The White Stripes
use_bpm 120
use_synth :fm
use_synth_defaults sustain: 0.25

notes = ["e3", "e3", "g3", "e3", 0, "d3", "c3", "b2"]

i = 0

s = [1.5, 0.5, 0.75, 0.25, 0.5, 0.5, 2, 2]

x = 0

live_loop :white_stripes do
  play notes[i]
  sleep s[x]
  i = i + 1
  x = x + 1
  if i > 7 and x > 7
    i = 0 and x = 0
  end
end
