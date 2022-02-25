# VARIABLES TO STORE SAMPLES
death = "C:/Users/nia_robinson/Downloads/pacman_sounds-20220225T185548Z-001/pacman_sounds/pacman_death.wav"
beginning = "C:/Users/nia_robinson/Downloads/pacman_sounds-20220225T185548Z-001/pacman_sounds/pacman_beginning.wav"
intermission = "C:/Users/nia_robinson/Downloads/pacman_sounds-20220225T185548Z-001/pacman_sounds/pacman_intermission.wav"
chomp = "C:/Users/nia_robinson/Downloads/pacman_sounds-20220225T185548Z-001/pacman_sounds/pacman_chomp.wav"
eat_ghost = "C:/Users/nia_robinson/Downloads/pacman_sounds-20220225T185548Z-001/pacman_sounds/pacman_eatghost.wav"



sample beginning
sleep 1
sample beginning
sleep 1

# INTRO
play :e4
sleep 0.5
play :e4
sleep 1
play :e4
sleep 1
play :c4
sleep 0.5
play :e4
sleep 1
play :g4
sleep 2
play :g3
sleep 2

live_loop:melody do
  4.times do
    # PART ONE
    play :c4
    sleep 1.5
    play :g3
    sleep 1.5
    play :e3
    sleep 1.5
    play :a3
    sleep 1
    play :b3
    sleep 1
    play :bb3
    sleep 0.5
    play :a3
    sleep 1
  end
  stop
end

live_loop:sample do
  4.times do
    sample intermission, beat_stretch: 4, amp: 15
    sleep 4
    sample eat_ghost
    sleep 1
    sample chomp
    sleep 0.5
    sample eat_ghost, amp: 20
    sleep 1
    sample chomp
    sleep 1.5
  end
  stop
end

sleep 32

sample death
sleep 1

#PART TWO
play :g3
sleep 2/3.0 #0.666666...
play :e4
sleep 2/3.0 #0.666666...
play :g4
sleep 2/3.0 #0.666666...
play :a4
sleep 1
play :f4
sleep 0.5
play :g4
sleep 1
play :e4
sleep 1
play :c4
sleep 0.5
play :d4
sleep 0.5
play :b3
sleep 1
