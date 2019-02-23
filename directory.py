#!/usr/bin/env python3

import requests
import cfg

url = 'https://api.twitch.tv/helix/streams?first=20'

headers = {
    'Client-ID': cfg.client,
}

r = requests.get(url, headers=headers)
json = r.json()

for stream in json['data']:
    print(stream['user_name'])
