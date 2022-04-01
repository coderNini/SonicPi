# Holy Grail by Justin Timberlake ft. Jay Z

use_bpm 72

use_synth :piano

heartless = "C:/Users/nia_robinson/Desktop/Heartless (ACAPELLA).wav.wav"

x = 10
define :bass1 do |n|
  4.times do
    play n, sustain: 2, amp: x
    sleep 1
    x = x - 2
    if x < 2
      x = 10
    end
  end
end



sample heartless

live_loop :treble_clef do
  sleep 13.6
  1.times do
    play :f5, sustain_level: 15, amp: 0.25
    sleep 0.75
    play :a5, sustain_level: 3, amp: 1
    sleep 0.5
    play :c6, sustain_level: 2, amp: 2
    sleep 1
    play :c5, amp: 4
    sleep 0.25
    play :c5, amp: 4
    sleep 0.25
    play :a5, sustain_level: 20, amp: 8
    sleep 0.75
    play :a5, amp: 10
    sleep 0.25
    play :a5, sustain_level: 2, amp: 10
    sleep 0.25
    play :g5, sustain_level: 2, amp: 10
    sleep 0.5
    play :f5, sustain_level: 2, amp: 10
    sleep 0.25
    play :g5, sustain_level: 20, amp: 10
    sleep 0.75
    play :c5, amp: 10
    sleep 0.25
    play :c5, sustain_level: 15, amp: 10
    sleep 0.75
    play :c5, amp: 10
    sleep 0.25
    play :g5, amp: 10
    sleep 0.5
    play :g5, amp: 10
    sleep 0.5
    play :a5, amp: 10
    sleep 0.5
    play :e5, amp: 10
    sleep 0.25
    play :f5, sustain_level: 15, amp: 10
    sleep 2.25
    play :f5, sustain_level: 15, amp: 10
    sleep 0.5
    play :f5, amp: 10
    sleep 0.25
    play :f5, amp: 10
    sleep 0.25
    play :f5, amp: 10
    sleep 0.25
    play :f5, amp: 10
    sleep 0.25
    play :f5, amp: 10
    sleep 0.25
    play :g5, sustain_level: 15, amp: 10
    sleep 0.75
    play :c5, amp: 10
    sleep 0.25
    play :c5, sustain_level: 15, amp: 10
    sleep 1
    play :c5, amp: 10
    sleep 0.25
    play :c5, amp: 10
    sleep 0.5
    play :c5, amp: 10
    sleep 0.5
    play :bb4, amp: 10
    sleep 0.25
    play :a4, amp: 10
    sleep 0.5
    play :bb4, sustain_level: 30, amp: 10
    sleep 0.25
    play :a4, sustain_level: 15, amp: 10
    sleep 1
    play :c5, amp: 10 #pattern 1
    sleep 0.25
    play :c5, amp: 10
    sleep 0.25
    play :c5, amp: 10
    sleep 0.25
    play :g5, sustain_level: 20, amp: 10
    sleep 1.25
    play :c5, amp: 10 #pattern 1  x2
    sleep 0.25
    play :c5, amp: 10
    sleep 0.25
    play :c5, amp: 10
    sleep 0.25
    play :g5, sustain_level: 20, amp: 10
    sleep 1.25
    play :c5, amp: 10 #pattern 1  x3
    sleep 0.25
    play :c5, amp: 10
    sleep 0.25
    play :c5, amp: 10
    sleep 0.25
    play :g5, sustain_level: 20, amp: 10
    sleep 1
    play :c5, amp: 10
    sleep 0.25
    play :c5, amp: 10
    sleep 0.25
    play :bb4, sustain_level: 20, amp: 10
    sleep 0.75
    play :a4, sustain_level: 30, amp: 10
    sleep 3
    play :d5, amp: 10
    sleep 0.25
    play :d5, amp: 10
    sleep 0.25
    play :d5, amp: 10
    sleep 0.25
    play :d5, amp: 10
    sleep 0.25
    play :d5, amp: 10
    sleep 0.5
    play :d5, amp: 10
    sleep 0.25
    play :d5, amp: 10
    sleep 0.25
    play :d5, amp: 10
    sleep 0.25
    play :d5, amp: 10
    sleep 0.25
    play :a4, amp: 10
    sleep 0.25
    play :a4, amp: 10
    sleep 0.25
    
    with_fx :eq do
      play :f4, sustain_level: 10, amp: 10
      sleep 0.5
      play :f4, sustain_level: 10, amp: 10
    end
  end
  stop
end

live_loop :bass_clef do
  sleep 29.95
  with_fx :eq do
    bass1 :bb2
    bass1 :c3
    play :a2
    play :a1
    sleep 1
    play :a2
    sleep 0.5
    play :a1
    sleep 0.5
    play :a2
    play :a1
    sleep 0.5
    play :a1
    sleep 0.5
    play :a2
    play :a1
    sleep 0.5
    play :a1
    sleep 0.5
    6.times do
      play :a1
      sleep 0.5
    end
    stop
  end
end
