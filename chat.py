#!/usr/bin/env python3

# CREDIT - https://gist.github.com/0Skynet/833dd97620d44c345520

import socket, sys, re
import cfg

HOST = "irc.twitch.tv"
PORT = 6667
CHAN = "#" + sys.argv[1].lower()
NICK = "justinfan12345"

s = socket.socket()

s.connect((HOST, PORT))
s.send(str.encode("USER " + HOST + "\r\n"))
s.send(str.encode("NICK " + NICK + "\r\n"))
s.send(str.encode("JOIN " + CHAN + "\r\n"))

clr = '\033[0m'

def col(usr, msg):
    a = str(hash(usr) % 6)
    if "@" + cfg.name in msg.lower():
        print('\033[1;97;41m' + usr + ":", msg + clr)
    elif usr == cfg.name:
        print('\033[1;97;45m' + usr + ":", msg + clr)
    else:
        print('\033[1;3' + a + 'm' + usr + clr + ":", msg)

while True:
    response = s.recv(1024).decode("utf-8", errors="ignore")
    for data in response.split("\n"):
        if "PRIVMSG" in data and len(data.split(CHAN + " :")) > 1:
            usr = re.search(r"\w+", data).group(0)
            msg = re.compile(r"^:\w+!\w+@\w+\.tmi\.twitch\.tv PRIVMSG #\w+ :").sub("", data)
            col(usr, msg)
        elif "PING" in data:
            s.send("PONG tmi.twitch.tv\r\n".encode("utf-8"))  
s.close()
