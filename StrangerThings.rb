# Stranger Things Main Theme
use_bpm 160
use_synth :saw

notes = ["c2", "e2", "g2", "b2", "c3", "b2", "g2", "e2"]

i = 0

live_loop :main_theme do
  with_fx :distortion do
    play notes[i]
    sleep 0.5
    i = i + 1
    if i > 7
      i = 0
    end
  end
end
