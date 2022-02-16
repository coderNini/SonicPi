# DIRECTIONS: Use functions to optimize this code!

use_bpm 136
use_synth :piano

define :bg_notes do |x|
  play:E3, amp: x
  sleep 1
  play:B3, amp: x
  play:E4, amp: x
  sleep 1
  play:B3, amp: x
  sleep 1
  play:E4, amp: x
  sleep 1
end

define :measures_2and8 do
  play:E4
  sleep 1
  play:E5
  play:Gs4
  sleep 2
  play:E5
  play:Gs4
  sleep 1
end

define :measures_3and4and6 do
  play :r
  sleep 1
  play:E5
  play:Gs4
  play:B4
  sleep 1
  play:B4
  sleep 1
  play:E5
  play:Gs4
  sleep 1
end

define :measures_5and7 do
  play:B4
  sleep 0.75
  play:As4
  sleep 0.25
  play:Gs4
  play:B4
  sleep 0.75
  play:Cs5
  sleep 0.25
  play:B4
  sleep 1
  play:Gs4
  play:E5
  sleep 1
end

live_loop:background_notes do
  bg_notes 0.25
  
  bg_notes 0.5
  
  bg_notes 0.75
  
  5.times do
    bg_notes 1
  end
  stop
end

# Measure 1
play :r
sleep 1
play:E4
play:Gs4
sleep 2
play:E5
play:Gs4
sleep 1

# Measure 2
measures_2and8

# Measure 3
measures_3and4and6

# Measure 4
measures_3and4and6

# Measure 5
measures_5and7

# Measure 6
measures_3and4and6

# Measure 7
measures_5and7

# Measure 8
measures_2and8
