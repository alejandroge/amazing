#! env ruby -w

class Amazing
    $target = 0                         # where GOTO goes
    $result = ''

    def self.clear
        $result = ''
    end

    def self.println
        $result = $result + "\n"
    end

    def self.print(text)
        $result = $result + text
    end

    def self.rnd(count)
        (count * rand).to_i + 1
    end

    def self.goto(lineno)
        $target = lineno
    end

    def self.doit(horizontal, vertical)
        self.clear
        self.print("Amazing - Copyright by Creative Computing, Morristown, NJ")
        self.println

        h = horizontal
        v = vertical
        return if (h == 1 || v == 1)

        wArray = Array.new(h+1) { Array.new(v+1, 0) }
        vArray = Array.new(h+1) { Array.new(v+1, 0) }

        q = 0
        z = 0
        x = self.rnd(h)

        # 130:170
        (1..h).each { |i|
            if i == x
                self.print("+  ")
            else
                self.print("+--")
            end
        }
        # 180
        self.print("+")
        self.println

        # 190
        c = 1
        wArray[x][1] = c
        c = c+1

        # 200
        r = x
        s = 1
        self.goto(270)

        while $target != -1
            case $target
                when 210
                    if r != h
                        self.goto(250)
                    else
                        self.goto(220)
                    end
                when 220
                    if s != v
                        self.goto(240)
                    else
                        self.goto(230)
                    end
                when 230
                    r = 1
                    s = 1
                    self.goto(260)
                when 240
                    r = 1
                    s = s+1
                    self.goto(260)
                when 250
                    r = r+1
                    self.goto(260)
                when 260
                    if wArray[r][s] == 0
                        self.goto(210)
                    else
                        self.goto(270)
                    end
                when 270
                    if r - 1 == 0
                        self.goto(600)
                    else
                        self.goto(280)
                    end
                when 280
                    if wArray[r - 1][s] != 0
                        self.goto(600)
                    else
                        self.goto(290)
                    end
                when 290
                    if s - 1 == 0
                        self.goto(430)
                    else
                        self.goto(300)
                    end
                when 300
                    if wArray[r][s - 1] != 0
                        self.goto(430)
                    else
                        self.goto(310)
                    end
                when 310
                    if r == h
                        self.goto(350)
                    else
                        self.goto(320)
                    end
                when 320
                    if wArray[r + 1][s] != 0
                        self.goto(350)
                    else
                        self.goto(330)
                    end
                when 330
                    x = self.rnd(3)
                    self.goto(340)
                when 340
                    if x == 1
                        self.goto(940)
                    elsif x == 2
                        self.goto(980)
                    elsif x == 3
                        self.goto(1020)
                    else
                        self.goto(350)
                    end
                when 350
                    if s != v
                        self.goto(380)
                    else
                        self.goto(360)
                    end
                when 360
                    if z == 1
                        self.goto(410)
                    else
                        self.goto(370)
                    end
                when 370
                    q = 1
                    self.goto(390)
                when 380
                    if wArray[r][s + 1] != 0
                        self.goto(410)
                    else
                        self.goto(390)
                    end
                when 390
                    x = self.rnd(3)
                    self.goto(400)
                when 400
                    if x == 1
                        self.goto(940)
                    elsif x == 2
                        self.goto(980)
                    elsif x == 3
                        self.goto(1090)
                    else
                        self.goto(410)
                    end
                when 410
                    x = self.rnd(2)
                    self.goto(420)
                when 420
                    if x == 1
                        self.goto(940)
                    elsif x == 2
                        self.goto(980)
                    else
                        self.goto(430)
                    end
                when 430
                    if r == h
                        self.goto(530)
                    else
                        self.goto(440)
                    end
                when 440
                    if wArray[r + 1][s] != 0
                        self.goto(530)
                    else
                        self.goto(450)
                    end
                when 450
                    if s != v
                        self.goto(480)
                    else
                        self.goto(460)
                    end
                when 460
                    if z == 1
                        self.goto(510)
                    else
                        self.goto(470)
                    end
                when 470
                    q = 1
                    self.goto(490)
                when 480
                    if wArray[r][s + 1] != 0
                        self.goto(510)
                    else
                        self.goto(490)
                    end
                when 490
                    x = self.rnd(3)
                    self.goto(500)
                when 500
                    if x == 1
                        self.goto(940)
                    elsif x == 2
                        self.goto(1020)
                    elsif x == 3
                        self.goto(1090)
                    else
                        self.goto(510)
                    end
                when 510
                    x = self.rnd(2)
                    self.goto(520)
                when 520
                    if x == 1
                        self.goto(940)
                    elsif x == 2
                        self.goto(1020)
                    else
                        self.goto(530)
                    end
                when 530
                    if s != v
                        self.goto(560)
                    else
                        self.goto(540)
                    end
                when 540
                    if z == 1
                        self.goto(590)
                    else
                        self.goto(550)
                    end
                when 550
                    q = 1
                    self.goto(570)
                when 560
                    if wArray[r][s + 1] != 0
                        self.goto(590)
                    else
                        self.goto(570)
                    end
                when 570
                    x = self.rnd(2)
                    self.goto(580)
                when 580
                    if x == 1
                        self.goto(940)
                    elsif x == 2
                        self.goto(1090)
                    else
                        self.goto(590)
                    end
                when 590
                    self.goto(940)
                when 600
                    if s - 1 == 0
                        self.goto(790)
                    else
                        self.goto(610)
                    end
                when 610
                    if wArray[r][s - 1] != 0
                        self.goto(790)
                    else
                        self.goto(620)
                    end
                when 620
                    if r == h
                        self.goto(720)
                    else
                        self.goto(630)
                    end
                when 630
                    if wArray[r + 1][s] != 0
                        self.goto(720)
                    else
                        self.goto(640)
                    end
                when 640
                    if s != v
                        self.goto(670)
                    else
                        self.goto(650)
                    end
                when 650
                    if z == 1
                        self.goto(700)
                    else
                        self.goto(660)
                    end
                when 660
                    q = 1
                    self.goto(680)
                when 670
                    if wArray[r][s + 1] != 0
                        self.goto(700)
                    else
                        self.goto(680)
                    end
                when 680
                    x = self.rnd(3)
                    self.goto(690)
                when 690
                    if x == 1
                        self.goto(980)
                    elsif x == 2
                        self.goto(1020)
                    elsif x == 3
                        self.goto(1090)
                    else
                        self.goto(700)
                    end
                when 700
                    x = self.rnd(2)
                    self.goto(710)
                when 710
                    if x == 1
                        self.goto(980)
                    elsif x == 2
                        self.goto(1020)
                    else
                        self.goto(720)
                    end
                when 720
                    if s != v
                        self.goto(750)
                    else
                        self.goto(730)
                    end
                when 730
                    if z == 1
                        self.goto(780)
                    else
                        self.goto(740)
                    end
                when 740
                    q = 1
                    self.goto(760)
                when 750
                    if wArray[r][s + 1] != 0
                        self.goto(780)
                    else
                        self.goto(760)
                    end
                when 760
                    x = self.rnd(2)
                    self.goto(770)
                when 770
                    if x == 1
                        self.goto(980)
                    elsif x == 2
                        self.goto(1090)
                    else
                        self.goto(780)
                    end
                when 780
                    self.goto(980)
                when 790
                    if r == h
                        self.goto(880)
                    else
                        self.goto(800)
                    end
                when 800
                    if wArray[r + 1][s] != 0
                        self.goto(880)
                    else
                        self.goto(810)
                    end
                when 810
                    if s != v
                        self.goto(840)
                    else
                        self.goto(820)
                    end
                when 820
                    if z == 1
                        self.goto(870)
                    else
                        self.goto(830)
                    end
                when 830
                    q = 1
                    self.goto(990)
                when 840
                    if wArray[r][s + 1] != 0
                        self.goto(870)
                    else
                        self.goto(850)
                    end
                when 850
                    x = self.rnd(2)
                    self.goto(860)
                when 860
                    if x == 1
                        self.goto(1020)
                    elsif x == 2
                        self.goto(1090)
                    else
                        self.goto(870)
                    end
                when 870
                    self.goto(1020)
                when 880
                    if s != v
                        self.goto(910)
                    else
                        self.goto(890)
                    end
                when 890
                    if z == 1
                        self.goto(930)
                    else
                        self.goto(900)
                    end
                when 900
                    q = 1
                    self.goto(920)
                when 910
                    if wArray[r][s + 1] != 0
                        self.goto(930)
                    else
                        self.goto(920)
                    end
                when 920
                    self.goto(1090)
                when 930
                    self.goto(1190)
                when 940
                    wArray[r - 1][s] = c
                    self.goto(950)
                when 950
                    c = c+1
                    vArray[r - 1][s] = 2
                    r = r-1
                    self.goto(960)
                when 960
                    if c == h * v + 1
                        self.goto(1200)
                    else
                        self.goto(970)
                    end
                when 970
                    q = 0
                    self.goto(270)
                when 980
                    wArray[r][s - 1] = c
                    self.goto(990)
                when 990
                    c = c+1
                    self.goto(1000)
                when 1000
                    vArray[r][s - 1] = 1
                    s = s-1
                    if c == h * v + 1
                        self.goto(1200)
                    else
                        self.goto(1010)
                    end
                when 1010
                    q = 0
                    self.goto(270)
                when 1020
                    wArray[r + 1][s] = c
                    self.goto(1030)
                when 1030
                    c = c+1
                    if vArray[r][s] == 0
                        self.goto(1050)
                    else
                        self.goto(1040)
                    end
                when 1040
                    vArray[r][s] = 3
                    self.goto(1060)
                when 1050
                    vArray[r][s] = 2
                    self.goto(1060)
                when 1060
                    r = r+1
                    self.goto(1070)
                when 1070
                    if c == h * v + 1
                        self.goto(1200)
                    else
                        self.goto(1080)
                    end
                when 1080
                    self.goto(600)
                when 1090
                    if q == 1
                        self.goto(1150)
                    else
                        self.goto(1100)
                    end
                when 1100
                    wArray[r][s + 1] = c
                    c = c+1
                    if vArray[r][s] == 0
                        self.goto(1120)
                    else
                        self.goto(1110)
                    end
                when 1110
                    vArray[r][s] = 3
                    self.goto(1130)
                when 1120
                    vArray[r][s] = 1
                    self.goto(1130)
                when 1130
                    s = s+1
                    if c == v * h + 1
                        self.goto(1200)
                    else
                        self.goto(1140)
                    end
                when 1140
                    self.goto(270)
                when 1150
                    z = 1
                    self.goto(1160)
                when 1160
                    if vArray[r][s] == 0
                        self.goto(1180)
                    else
                        self.goto(1170)
                    end
                when 1170
                    vArray[r][s] = 3
                    q = 0
                    self.goto(1190)
                when 1180
                    vArray[r][s] = 1
                    q = 0
                    r = 1
                    s = 1
                    self.goto(260)
                when 1190
                    self.goto(210)
                when 1200
                    $target = -1
            end

        end

        # 1200
        (1..v).each { |j|
            self.print("|")        # 1210

            (1..h).each { |i|
                if vArray[i][j] >= 2
                    self.print("   ")  # 1240
                else
                    self.print("  |")  # 1260
                end
            }

            self.print(" ")   # 1280
            self.println

            (1..h).each { |i|
                if vArray[i][j] == 0
                    self.print("+--")   # 1300, 1340
                elsif vArray[i][j] == 2
                    self.print("+--")  # 1310, 1340
                else
                    self.print("+  ") # 1320
                end
            }

            self.print("+")    # 1360
            self.println
        }
    end
end

if __FILE__ == $0
  rows = ENV['rows'] ? ENV['rows'].to_i : 10
  cols = ENV['cols'] ? ENV['cols'].to_i : 10
  Amazing.doit(cols, rows)
  puts $result
end

