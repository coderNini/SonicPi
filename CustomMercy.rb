#Mercy by Shawn Mendes

use_bpm 148

use_synth :piano

vocals = "/Users/queennini/Downloads/Mercy (ACAPELLA) Clip.wav"

dun = "/Users/queennini/Downloads/DunDunDun.wav"

R2D = "/Users/queennini/Downloads/ReadyToDie.wav"

define :my_fxn do
  play :a4, amp: 10
  sleep 0.5
  play :b4, amp: 10
  sleep 0.5
end

define :bc1 do |a|
  play :g3, release: 4, amp: a
  play :e3, release: 4, amp: a
  play :b2, release: 4, amp: a
  sleep 4
end

define :bc2 do |a|
  play :g3, release: 4, amp: a
  play :d3, release: 4, amp: a
  play :b2, release: 4, amp: a
  sleep 4
end

define :bc3 do |a|
  play :f3, release: 4, amp: a
  play :d3, release: 4, amp: a
  play :b2, release: 4, amp: a
  sleep 4
end

define :bc4 do |a|
  play :e3, release: 4, amp: a
  play :c3, release: 4, amp: a
  play :a2, release: 4, amp: a
  sleep 4
end

#array for measure 12
notes = ["e4", "f4", "d4", "c4"]

i = 0

s = [1, 1, 1.5, 0.5]

x = 0

#INTRO
sample dun
sleep 5
sample R2D

#bass clef
live_loop:bass_clef_fade do
  sleep 4
  1.times do
    with_fx :hpf do
      #measure 1
      bc1 5
      
      #measure 2
      bc2 10
      
      #measure 3
      bc3 15
      
      #measure 4
      bc4 20
    end
  end
  stop
end

#treble clef
live_loop:treble_clef do
  sleep 4
  2.times do
    with_fx :hpf do
      #measures 1 and 5
      sleep 1
      my_fxn
      play :d5, sustain: 2, amp: 10
      sleep 1
      play :b4, sustain: 2, amp: 10
      sleep 2
      
      #measures 2 and 6
      my_fxn
      play :f4, sustain: 2, amp: 10
      sleep 1
      play :e4, sustain: 2, amp: 10
      sleep 2
      
      #measures 3 and 7
      play :d4, amp: 10
      sleep 0.5
      play :e4, amp: 10
      sleep 0.5
      play :f4, sustain: 2, amp: 10
      sleep 1
      play :c4, sustain: 2, amp: 10
      sleep 1
      
      #measures 4 and 8
      play :d4, sustain: 2, amp: 10
      sleep 0.5
      play :e4, sustain: 2, amp: 10
      sleep 3.5
    end
  end
  stop
end

live_loop:treble_clef2 do
  sleep 32
  #enter vocals
  sample vocals, amp: 5
  1.times do
    with_fx :hpf do
      #measure 9
      sleep 1.5
      play :f4, sustain: 2, amp: 10
      sleep 1
      play :f4, amp: 10
      sleep 0.5
      play :e4, sustain: 2, amp: 10
      sleep 1
      
      #measure 10
      sleep 1
      play :c4, amp: 10
      sleep 0.5
      play :d4, amp: 10
      sleep 0.5
      play :e4, amp: 10
      sleep 0.5
      play :e4, sustain: 2, amp: 10
      sleep 1.5
      
      #measure 11
      sleep 1.5
      play :e4, sustain: 2, amp: 10
      sleep 1
      play :e4, sustain: 2, amp: 10
      sleep 1
      play :d4, amp: 10
      sleep 0.5
      
      #measure 12
      4.times do
        play notes[i], sustain: 2, amp: 10
        sleep s[x]
        i = i + 1
        x = x + 1
      end
      
      #measure 13
      sleep 1.5
      play :f4, sustain: 2, amp: 10
      sleep 1
      play :e4, sustain: 2, amp: 10
      sleep 1.5
      
      #measure 14
      sleep 0.5
      play :c4, amp: 10
      sleep 0.5
      play :d4, amp: 10
      sleep 0.5
      play :e4, amp: 10
      sleep 0.5
      play :e4, sustain: 2, amp: 10
      sleep 1.5
      
      #measure 15
      sleep 1.5
      play :c4, amp: 10
      sleep 0.5
      play :e4, sustain: 2, amp: 10
      sleep 1
      play :e4, sustain: 2, amp: 10
      sleep 1
      play :d4, amp: 10
      sleep 0.5
      
      #measure 16
      play :e4, amp: 8
      sleep 1
      play :f4, sustain: 2, amp: 6
      sleep 1
      play :d4, sustain: 2, amp: 4
      sleep 1.5
      play :d4, sustain: 4, amp: 2
      sleep 1.5
    end
  end
  stop
end

sleep 16

live_loop:bass_clef do
  3.times do
    with_fx :hpf do
      #measure 1
      bc1 20
      
      #measure 2
      bc2 20
      
      #measure 3
      bc3 20
      
      #measure 4
      bc4 20
    end
  end
  stop
end

sleep 48

live_loop:bass_clef_end do
  with_fx :hpf do
    x = 12
    1.times do
      #measure 1
      bc1 x
      x = x - 3
      
      #measure 2
      bc2 x
      x = x - 3
      
      #measure 3
      bc3 x
      x = x - 3
      #measure 4
      bc4 x
    end
  end
  stop
end
