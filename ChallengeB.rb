#Challenge B

live_loop :my_snare  do
  12.times do
    sample :drum_snare_soft
    sleep 2
  end
  stop
end

live_loop :my_kick  do
  16.times do
    sample :drum_heavy_kick, amp: 2
    sleep 1
  end
  stop
end

live_loop :my_cymbal  do
  8.times do
    sample :drum_cymbal_closed
    sleep 0.5
  end
  stop
end

sleep 24

live_loop :my_splash do
  3.times do
    sample :drum_splash_hard
    sleep 2.67
  end
  stop
end

live_loop :other_cymbal do
  8.times do
    sample :drum_cymbal_hard
    sleep 1
  end
  stop
end

sleep 5
sample :drum_cowbell
sleep 2
sample :drum_cowbell

sleep 1

live_loop :my_snare2  do
  4.times do
    sample :drum_snare_soft
    sleep 2
  end
  stop
end

live_loop :my_kick2  do
  8.times do
    sample :drum_heavy_kick, amp: 2
    sleep 1
  end
  stop
end

live_loop :my_cymbal2  do
  16.times do
    sample :drum_cymbal_closed
    sleep 0.5
  end
  stop
end
