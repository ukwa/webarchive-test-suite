#!/bin/sh
wget -i urls.txt -O - --warc-file=IAH-urls-wget
