import subprocess, time
from colour import Color

pct = -1

while True:
    
    old = pct
    bat = subprocess.check_output(["acpi", "--battery"])
    pct = int(bat.decode().strip().split(",")[1][1:-1])

    if pct != old:

        out = subprocess.check_output(["xrdb", "-query"])
        lines = out.decode().split("\n")
        top = Color(lines[11].split("\t")[1])
        blu = Color(lines[5].split("\t")[1]) 


        bot = list(blu.range_to(Color(lines[12].split("\t")[1]), 100))[100 - pct]
        wall = "hsetroot -add " + top.hex + " -add " + bot.hex + " -gradient 0" 
        subprocess.Popen(wall.split())

        print(pct, bot.hex)

    time.sleep(1)
