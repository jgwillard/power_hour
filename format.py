#!/usr/bin/env python3

import re

regex = re.compile('[’/]+')

with open('tracks.txt') as file:
    for line in file:
        words = line.split()
        url = words.pop()
        title = ' '.join(words)
        title = title.replace(' ', '_').lower()
        title = regex.sub('', title)
        print(title, url)
