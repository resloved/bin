#!/usr/bin/env python3

import requests
import cfg

url = 'https://api.twitch.tv/kraken/streams/followed'

headers = {
    'Accept':        'application/vnd.twitchtv.v5+json',
    'Client-ID':     cfg.client,
    'Authorization': 'OAuth ' + cfg.oauth,
}

r = requests.get(url, headers=headers)
json = r.json()

for stream in json['streams']:
    print(stream['channel']['display_name'])
