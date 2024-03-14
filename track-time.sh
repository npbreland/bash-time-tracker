#!/bin/bash

dirname=$1

datestamp=$(date +%Y_%m_%d_%H_%M_%S)

$STOPWATCH_PATH > $1/$datestamp
