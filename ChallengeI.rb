# Stranger Things Main Theme -- Challenge I

use_bpm 160
use_synth :saw

define :octaves do |a, b, c, d, e, f, g, h|
  play a
  sleep 0.5
  play b
  sleep 0.5
  play c
  sleep 0.5
  play d
  sleep 0.5
  play e
  sleep 0.5
  play f
  sleep 0.5
  play g
  sleep 0.5
  play h
  sleep 0.5
end

live_loop :main_theme do
  with_fx :distortion do
    #second octave
    octaves :c2, :e2, :g2, :b2, :c3, :b2, :g2, :e2
    
    #third octave
    octaves :c3, :e3, :g3, :b3, :c4, :b3, :g3, :e3
    
    #fourth octave
    octaves :c4, :e4, :g4, :b4, :c5, :b4, :g4, :e4
    
    #fifth octave
    octaves :c5, :e5, :g5, :b5, :c6, :b5, :g5, :e5
  end
end
