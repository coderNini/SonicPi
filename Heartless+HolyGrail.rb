# Holy Grail by Justin Timberlake ft. Jay Z

use_bpm 72

use_synth :piano

heartless = "C:/Users/nia_robinson/Desktop/Heartless (ACAPELLA).wav.wav"

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



sample heartless

live_loop :treble_clef do
  sleep 13.6
  1.times do
    play :f5, sustain_level: 15, amp: 0.15
    sleep 0.75
    play :a5, sustain_level: 3, amp: 0.25
    sleep 0.5
    play :c6, sustain_level: 2, amp: 0.5
    sleep 1
    play :c5, amp: 0.75
    sleep 0.25
    play :c5, amp: 0.75
    sleep 0.25
    play :a5, sustain_level: 20, amp: 0.5
    sleep 0.75
    play :a5, amp: 2
    sleep 0.25
    play :a5, sustain_level: 2, amp: 0.5
    sleep 0.25
    play :g5, sustain_level: 2, amp: 0.5
    sleep 0.5
    play :f5, sustain_level: 2, amp: 0.5
    sleep 0.25
    play :g5, sustain_level: 20, amp: 0.5
    sleep 0.75
    play :c5, amp: 2
    sleep 0.25
    play :c5, sustain_level: 15, amp: 0.5
    sleep 0.75
    play :c5, amp: 2
    sleep 0.25
    play :g5, amp: 2
    sleep 0.5
    play :g5, amp: 2
    sleep 0.5
    play :a5, amp: 2
    sleep 0.5
    play :e5, amp: 2
    sleep 0.25
    play :f5, sustain_level: 15, amp: 0.5
    sleep 2.25
    play :f5, sustain_level: 15, amp: 0.5
    sleep 0.5
    play :f5, amp: 2
    sleep 0.25
    play :f5, amp: 2
    sleep 0.25
    play :f5, amp: 2
    sleep 0.25
    play :f5, amp: 2
    sleep 0.25
    play :f5, amp: 2
    sleep 0.25
    play :g5, sustain_level: 15, amp: 0.5
    sleep 0.75
    play :c5, amp: 2
    sleep 0.25
    play :c5, sustain_level: 15, amp: 0.5
    sleep 1
    play :c5, amp: 2
    sleep 0.25
    play :c5, amp: 2
    sleep 0.5
    play :c5, amp: 2
    sleep 0.5
    play :bb4, amp: 2
    sleep 0.25
    play :a4, amp: 2
    sleep 0.5
    play :bb4, sustain_level: 30, amp: 0.5
    sleep 0.25
    play :a4, sustain_level: 15, amp: 0.5
    sleep 1
    play :c5, amp: 2 #pattern 1
    sleep 0.25
    play :c5, amp: 2
    sleep 0.25
    play :c5, amp: 2
    sleep 0.25
    play :g5, sustain_level: 20, amp: 0.5
    sleep 1.25
    play :c5, amp: 2 #pattern 1  x2
    sleep 0.25
    play :c5, amp: 2
    sleep 0.25
    play :c5, amp: 2
    sleep 0.25
    play :g5, sustain_level: 20, amp: 0.5
    sleep 1.25
    play :c5, amp: 1 #pattern 1  x3
    sleep 0.25
    play :c5, amp: 2
    sleep 0.25
    play :c5, amp: 2
    sleep 0.25
    play :g5, sustain_level: 20, amp: 0.5
    sleep 1
    play :c5, amp: 2
    sleep 0.25
    play :c5, amp: 2
    sleep 0.25
    play :bb4, sustain_level: 20, amp: 0.5
    sleep 0.75
    play :a4, sustain_level: 30, amp: 0.5
    sleep 3
    play :d5, amp: 2
    sleep 0.25
    play :d5, amp: 2
    sleep 0.25
    play :d5, amp: 2
    sleep 0.25
    play :d5, amp: 2
    sleep 0.25
    play :d5, amp: 2
    sleep 0.5
    play :d5, amp: 2
    sleep 0.25
    play :d5, amp: 2
    sleep 0.25
    play :d5, amp: 2
    sleep 0.25
    play :d5, amp: 2
    sleep 0.25
    play :a4, amp: 2
    sleep 0.25
    play :a4, amp: 2
    sleep 0.25
    
    with_fx :eq do
      play :f4, sustain_level: 10, amp: 0.5
      sleep 0.5
      play :f4, sustain_level: 10, amp: 0.5
    end
  end
  stop
end

live_loop :bass_clef do
  sleep 30.24
  with_fx :eq do
    bass1 :bb2
    bass1 :c3
    
    bass2 :a2, :a1, :a2, 1, 0.5
    #play :a2, amp: 2
    #play :a1, amp: 2
    #sleep 1          #THIS MIGHT NEED FIXING
    #play :a2, amp: 2
    #sleep 0.5
    
    play :a1, amp: 2
    sleep 0.5
    
    bass2 :a2, :a1, :a1, 0.5, 0.5
    #play :a2, amp: 2
    #play :a1, amp: 2
    #sleep 0.5
    #play :a1, amp: 2
    #sleep 0.5
    
    play :a2, amp: 2
    play :a1, amp: 2
    sleep 0.5
    play :a1, amp: 2
    sleep 0.5
    6.times do
      play :a1, amp: 2
      sleep 0.5
    end
    stop
  end
end
