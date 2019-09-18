#! env ruby -w

class Amazing
    $target = 0                         # where GOTO goes
    $result = ''

    def initialize(horizontal, vertical)
      doit(horizontal, vertical)
    end

    def clear
        $result = ''
    end

    def println
        $result = $result + "\n"
    end

    def print(text)
        $result = $result + text
    end

    def rnd(count)
        (count * rand).to_i + 1
    end

    def goto(lineno)
        $target = lineno
    end

    def doit(horizontal, vertical)
        clear
        print("Amazing - Copyright by Creative Computing, Morristown, NJ")
        println

        h = horizontal
        v = vertical
        return if (h == 1 || v == 1)

        wArray = Array.new(h+1) { Array.new(v+1, 0) }
        vArray = Array.new(h+1) { Array.new(v+1, 0) }

        q = 0
        z = 0
        x = rnd(h)

        # 130:170
        (1..h).each { |i|
            if i == x
                print("+  ")
            else
                print("+--")
            end
        }
        # 180
        print("+")
        println

        # 190
        c = 1
        wArray[x][1] = c
        c = c+1

        # 200
        r = x
        s = 1
        goto(270)

        while $target != -1
            case $target
                when 210
                    if r != h
                        goto(250)
                    else
                        goto(220)
                    end
                when 220
                    if s != v
                        goto(240)
                    else
                        goto(230)
                    end
                when 230
                    r = 1
                    s = 1
                    goto(260)
                when 240
                    r = 1
                    s = s+1
                    goto(260)
                when 250
                    r = r+1
                    goto(260)
                when 260
                    if wArray[r][s] == 0
                        goto(210)
                    else
                        goto(270)
                    end
                when 270
                    if r - 1 == 0
                        goto(600)
                    else
                        goto(280)
                    end
                when 280
                    if wArray[r - 1][s] != 0
                        goto(600)
                    else
                        goto(290)
                    end
                when 290
                    if s - 1 == 0
                        goto(430)
                    else
                        goto(300)
                    end
                when 300
                    if wArray[r][s - 1] != 0
                        goto(430)
                    else
                        goto(310)
                    end
                when 310
                    if r == h
                        goto(350)
                    else
                        goto(320)
                    end
                when 320
                    if wArray[r + 1][s] != 0
                        goto(350)
                    else
                        goto(330)
                    end
                when 330
                    x = rnd(3)
                    goto(340)
                when 340
                    if x == 1
                        goto(940)
                    elsif x == 2
                        goto(980)
                    elsif x == 3
                        goto(1020)
                    else
                        goto(350)
                    end
                when 350
                    if s != v
                        goto(380)
                    else
                        goto(360)
                    end
                when 360
                    if z == 1
                        goto(410)
                    else
                        goto(370)
                    end
                when 370
                    q = 1
                    goto(390)
                when 380
                    if wArray[r][s + 1] != 0
                        goto(410)
                    else
                        goto(390)
                    end
                when 390
                    x = rnd(3)
                    goto(400)
                when 400
                    if x == 1
                        goto(940)
                    elsif x == 2
                        goto(980)
                    elsif x == 3
                        goto(1090)
                    else
                        goto(410)
                    end
                when 410
                    x = rnd(2)
                    goto(420)
                when 420
                    if x == 1
                        goto(940)
                    elsif x == 2
                        goto(980)
                    else
                        goto(430)
                    end
                when 430
                    if r == h
                        goto(530)
                    else
                        goto(440)
                    end
                when 440
                    if wArray[r + 1][s] != 0
                        goto(530)
                    else
                        goto(450)
                    end
                when 450
                    if s != v
                        goto(480)
                    else
                        goto(460)
                    end
                when 460
                    if z == 1
                        goto(510)
                    else
                        goto(470)
                    end
                when 470
                    q = 1
                    goto(490)
                when 480
                    if wArray[r][s + 1] != 0
                        goto(510)
                    else
                        goto(490)
                    end
                when 490
                    x = rnd(3)
                    goto(500)
                when 500
                    if x == 1
                        goto(940)
                    elsif x == 2
                        goto(1020)
                    elsif x == 3
                        goto(1090)
                    else
                        goto(510)
                    end
                when 510
                    x = rnd(2)
                    goto(520)
                when 520
                    if x == 1
                        goto(940)
                    elsif x == 2
                        goto(1020)
                    else
                        goto(530)
                    end
                when 530
                    if s != v
                        goto(560)
                    else
                        goto(540)
                    end
                when 540
                    if z == 1
                        goto(590)
                    else
                        goto(550)
                    end
                when 550
                    q = 1
                    goto(570)
                when 560
                    if wArray[r][s + 1] != 0
                        goto(590)
                    else
                        goto(570)
                    end
                when 570
                    x = rnd(2)
                    goto(580)
                when 580
                    if x == 1
                        goto(940)
                    elsif x == 2
                        goto(1090)
                    else
                        goto(590)
                    end
                when 590
                    goto(940)
                when 600
                    if s - 1 == 0
                        goto(790)
                    else
                        goto(610)
                    end
                when 610
                    if wArray[r][s - 1] != 0
                        goto(790)
                    else
                        goto(620)
                    end
                when 620
                    if r == h
                        goto(720)
                    else
                        goto(630)
                    end
                when 630
                    if wArray[r + 1][s] != 0
                        goto(720)
                    else
                        goto(640)
                    end
                when 640
                    if s != v
                        goto(670)
                    else
                        goto(650)
                    end
                when 650
                    if z == 1
                        goto(700)
                    else
                        goto(660)
                    end
                when 660
                    q = 1
                    goto(680)
                when 670
                    if wArray[r][s + 1] != 0
                        goto(700)
                    else
                        goto(680)
                    end
                when 680
                    x = rnd(3)
                    goto(690)
                when 690
                    if x == 1
                        goto(980)
                    elsif x == 2
                        goto(1020)
                    elsif x == 3
                        goto(1090)
                    else
                        goto(700)
                    end
                when 700
                    x = rnd(2)
                    goto(710)
                when 710
                    if x == 1
                        goto(980)
                    elsif x == 2
                        goto(1020)
                    else
                        goto(720)
                    end
                when 720
                    if s != v
                        goto(750)
                    else
                        goto(730)
                    end
                when 730
                    if z == 1
                        goto(780)
                    else
                        goto(740)
                    end
                when 740
                    q = 1
                    goto(760)
                when 750
                    if wArray[r][s + 1] != 0
                        goto(780)
                    else
                        goto(760)
                    end
                when 760
                    x = rnd(2)
                    goto(770)
                when 770
                    if x == 1
                        goto(980)
                    elsif x == 2
                        goto(1090)
                    else
                        goto(780)
                    end
                when 780
                    goto(980)
                when 790
                    if r == h
                        goto(880)
                    else
                        goto(800)
                    end
                when 800
                    if wArray[r + 1][s] != 0
                        goto(880)
                    else
                        goto(810)
                    end
                when 810
                    if s != v
                        goto(840)
                    else
                        goto(820)
                    end
                when 820
                    if z == 1
                        goto(870)
                    else
                        goto(830)
                    end
                when 830
                    q = 1
                    goto(990)
                when 840
                    if wArray[r][s + 1] != 0
                        goto(870)
                    else
                        goto(850)
                    end
                when 850
                    x = rnd(2)
                    goto(860)
                when 860
                    if x == 1
                        goto(1020)
                    elsif x == 2
                        goto(1090)
                    else
                        goto(870)
                    end
                when 870
                    goto(1020)
                when 880
                    if s != v
                        goto(910)
                    else
                        goto(890)
                    end
                when 890
                    if z == 1
                        goto(930)
                    else
                        goto(900)
                    end
                when 900
                    q = 1
                    goto(920)
                when 910
                    if wArray[r][s + 1] != 0
                        goto(930)
                    else
                        goto(920)
                    end
                when 920
                    goto(1090)
                when 930
                    goto(1190)
                when 940
                    wArray[r - 1][s] = c
                    goto(950)
                when 950
                    c = c+1
                    vArray[r - 1][s] = 2
                    r = r-1
                    goto(960)
                when 960
                    if c == h * v + 1
                        goto(1200)
                    else
                        goto(970)
                    end
                when 970
                    q = 0
                    goto(270)
                when 980
                    wArray[r][s - 1] = c
                    goto(990)
                when 990
                    c = c+1
                    goto(1000)
                when 1000
                    vArray[r][s - 1] = 1
                    s = s-1
                    if c == h * v + 1
                        goto(1200)
                    else
                        goto(1010)
                    end
                when 1010
                    q = 0
                    goto(270)
                when 1020
                    wArray[r + 1][s] = c
                    goto(1030)
                when 1030
                    c = c+1
                    if vArray[r][s] == 0
                        goto(1050)
                    else
                        goto(1040)
                    end
                when 1040
                    vArray[r][s] = 3
                    goto(1060)
                when 1050
                    vArray[r][s] = 2
                    goto(1060)
                when 1060
                    r = r+1
                    goto(1070)
                when 1070
                    if c == h * v + 1
                        goto(1200)
                    else
                        goto(1080)
                    end
                when 1080
                    goto(600)
                when 1090
                    if q == 1
                        goto(1150)
                    else
                        goto(1100)
                    end
                when 1100
                    wArray[r][s + 1] = c
                    c = c+1
                    if vArray[r][s] == 0
                        goto(1120)
                    else
                        goto(1110)
                    end
                when 1110
                    vArray[r][s] = 3
                    goto(1130)
                when 1120
                    vArray[r][s] = 1
                    goto(1130)
                when 1130
                    s = s+1
                    if c == v * h + 1
                        goto(1200)
                    else
                        goto(1140)
                    end
                when 1140
                    goto(270)
                when 1150
                    z = 1
                    goto(1160)
                when 1160
                    if vArray[r][s] == 0
                        goto(1180)
                    else
                        goto(1170)
                    end
                when 1170
                    vArray[r][s] = 3
                    q = 0
                    goto(1190)
                when 1180
                    vArray[r][s] = 1
                    q = 0
                    r = 1
                    s = 1
                    goto(260)
                when 1190
                    goto(210)
                when 1200
                    $target = -1
            end

        end

        # 1200
        (1..v).each { |j|
            print("|")        # 1210

            (1..h).each { |i|
                if vArray[i][j] >= 2
                    print("   ")  # 1240
                else
                    print("  |")  # 1260
                end
            }

            print(" ")   # 1280
            println

            (1..h).each { |i|
                if vArray[i][j] == 0
                    print("+--")   # 1300, 1340
                elsif vArray[i][j] == 2
                    print("+--")  # 1310, 1340
                else
                    print("+  ") # 1320
                end
            }

            print("+")    # 1360
            println
        }
    end
end

if __FILE__ == $0
  rows = ENV['rows'] ? ENV['rows'].to_i : 10
  cols = ENV['cols'] ? ENV['cols'].to_i : 10
  Amazing.new(cols, rows)
  puts $result
end

