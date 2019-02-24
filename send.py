#!/usr/bin/env python3

# CREDIT - https://gist.github.com/0Skynet/833dd97620d44c345520

import socket, sys, os, time
import cfg

from threading import Thread

HOST = "irc.twitch.tv"
PORT = 6667
CHAN = "#" + sys.argv[1].lower()
NICK = cfg.name
AUTH = "oauth:" + cfg.oauth


s = socket.socket()

s.connect((HOST, PORT))
s.send(str.encode("PASS " + AUTH + "\r\n"))
s.send(str.encode("NICK " + NICK + "\r\n"))
s.send(str.encode("JOIN " + CHAN + "\r\n"))

def awake():
    while True:
        if "PING" in s.recv(1024).decode("utf-8", errors="ignore"):
            s.send("PONG tmi.twitch.tv\r\n".encode("utf-8"))  
        time.sleep(1)

Thread(target=awake).start()

while True:
    os.system("clear")
    inp = input("\033[30mSend a message\r\033[39m")
    if inp:
        msg = str.encode("PRIVMSG " + CHAN + " :" + inp + "\r\n")
        s.send(msg)
s.close()
