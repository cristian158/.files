#!/bin/bash

###################################################################
###                                                             ###
###  use ffmpeg to transcode a given movie file and a bitrate   ###
###                                                             ###
###################################################################

### work in progressss....

ffmpeg -i input-file.mov -b:v 10000k output-file.mkv

$1 = input-file.mov
$2 = 10000k
$3 = output-file.mkv
