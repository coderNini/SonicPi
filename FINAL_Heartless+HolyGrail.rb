# Holy Grail by Justin Timberlake ft. Jay Z

use_bpm 73

use_synth :piano

heartless = "/Users/queennini/Downloads/Heartless (ACAPELLA).wav.wav"

beat_drop = "/Users/queennini/Downloads/HG_Beat2.wav"

HBK = "/Users/queennini/Downloads/HBK_aSample copy.wav"

x = 2
define :bass1 do |n|
  4.times do
    play n, amp: x
    sleep 1
    x = x - 0.25
    if x = 1
      x = 2
    end
  end
end

define :bass2 do |n, nn, nnn, xx, xxx|
  play n, amp: 2
  play nn, amp: 2
  sleep xx
  play nnn, amp: 2
  sleep xxx
end

define :pattern do |n, st, a, x|
  play n, sustain_level: st, amp: a
  sleep x
end

i = 0
notes = ["d5", "d5", "d5", "d5", "a4", "a4"]

ii = 0
iterate = ["c5", "g5", "g5", "a5", "e5"]

ss = 0
s = [0.25, 0.5, 0.5, 0.5, 0.25]

define :c5s do |x, xx|
  play :c5, amp: x
  sleep xx
  play :c5, amp: x
  sleep xx
end

define :c_and_g do |x|
  play :c5, amp: 2
  sleep 0.25
  play :c5, amp: 2
  sleep 0.25
  play :c5, amp: 2
  sleep 0.25
  play :g5, sustain_level: 20, amp: 0.5
  sleep x
end

define :b_and_a do |st, a, x, st2, xx|
  play :bb4, sustain_level: st, amp: a
  sleep x
  play :a4, sustain_level: st2, amp: a
  sleep xx
end

sample heartless #TRANSITION

live_loop :treble_clef do
  sleep 13.8
  1.times do
    pattern :f5, 15, 0.15, 0.75
    
    pattern :a5, 3, 0.25, 0.5
    
    pattern :c6, 2, 0.5, 1
    
    c5s 0.75, 0.25
    
    pattern :a5, 20, 0.5, 0.75
    
    pattern :a5, 1, 2, 0.25
    
    pattern :a5, 2, 0.5, 0.25
    
    pattern :g5, 2, 0.5, 0.5
    
    pattern :f5, 2, 0.5, 0.25
    
    pattern :g5, 20, 0.5, 0.75
    
    pattern :c5, 1, 2, 0.25
    
    pattern :c5, 15, 0.5, 0.75
    
    5.times do
      play iterate[ii], amp: 2
      sleep s[ss]
      ii = ii + 1
      ss = ss + 1
    end
    
    pattern :f5, 15, 0.5, 2.25
    
    pattern :f5, 15, 0.5, 0.5
    
    5.times do
      pattern :f5, 1, 2, 0.25
    end
    
    pattern :g5, 15, 0.5, 0.75
    
    pattern :c5, 1, 2, 0.25
    
    pattern :c5, 15, 0.5, 1
    
    pattern :c5, 1, 2, 0.25
    
    c5s 2, 0.5
    
    b_and_a 1, 2, 0.25, 1, 0.5
    b_and_a 30, 0.5, 0.25, 15, 1
    
    2.times do
      c_and_g 1.25
    end
    
    c_and_g 1
    
    c5s 2, 0.25
    
    b_and_a 20, 0.5, 0.75, 30, 2.9
    
    4.times do
      pattern :d5, 1, 2, 0.25
    end
    
    pattern :d5, 1, 2, 0.5
    
    6.times do
      play notes[i], amp: 2
      sleep 0.25
      i = i + 1
    end
    
    with_fx :eq do
      pattern :f4, 10, 0.5, 0.5
      play :f4, sustain_level: 10, amp: 0.5
    end
  end
  stop
end

live_loop :bass_clef do
  sleep 30.45
  with_fx :eq do
    bass1 :bb2
    bass1 :c3
    
    bass2 :a2, :a1, :a2, 1, 0.5
    
    pattern :a1, 1, 2, 0.5
    
    bass2 :a2, :a1, :a1, 0.5, 0.5
    
    play :a2, amp: 2
    
    aa = 3
    8.times do
      play :a1, amp: aa
      sleep 0.5
      aa = aa - 0.3     #FADE OUT
    end
    stop
  end
end

sleep 45.75
sample beat_drop

sleep 16
sample HBK #OUTRO
