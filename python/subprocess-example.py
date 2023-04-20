#!/usr/bin/env python3

import subprocess

res = subprocess.run(["/usr/bin/ls", "-l", "-a"], capture_output=True)
print(res.stdout.decode('utf8'))

res = subprocess.run(["/usr/bin/cat", "/etc/shadow"], capture_output=True)
if res.returncode != 0:
    print('Command execution failed!')
    print(res.stderr.decode('utf8'))
