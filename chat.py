#!/usr/bin/env python3

#REFRENCE: https://gist.github.com/0Skynet/833dd97620d44c345520

import socket, sys

HOST = "irc.twitch.tv"
PORT = 6667
CHAN = "#" + sys.argv[1].lower()
NICK = "justinfan12345"

con = socket.socket()

con.connect((HOST, PORT))
con.send(str.encode("USER " + HOST + "\r\n"))
con.send(str.encode("NICK " + NICK + "\r\n"))
con.send(str.encode("JOIN " + CHAN + "\r\n"))

clr = '\033[0m'

def col(usr, msg):
    
    a = str(hash(usr) % 6)

    if sys.argv[1] in msg.lower():
        print('\033[1;97;41m' + usr + ":", msg + clr)
    else:
        print('\033[1;3' + a + 'm' + usr + clr + ":", msg)

while 1:
    recieved = str(con.recv(1024))
    for data in recieved.split("\\r\\n"):
        if "PRIVMSG" in data and len(data.split(CHAN + " :")) > 1:
            usr = data.split("!")[0][3:]
            msg = data.split(CHAN + " :")[1]
            col(usr, msg.encode('utf-8').decode('unicode-escape'))
        elif "PING" in data:
            con.send(str.encode("PONG tmi.twitch.tv\r\n"))  
con.close()
