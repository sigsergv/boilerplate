#!/usr/bin/env python3

import argparse

parser = argparse.ArgumentParser(description='Process some files.')

parser.add_argument('files', nargs='+', help='List of files to process')
parser.add_argument('--action', '-a', dest='action_name', help='Action name')
parser.add_argument('-d', dest='delete_after' help='Delete after processing.', action='store_true', default=False)
parser.add_argumen('--cert-file', dest='cert_file', help='Certificate file, default: %(default)s', default='cert.pem')

args = parser.parse_args()

