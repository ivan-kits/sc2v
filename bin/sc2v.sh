#!/bin/sh
#
# script to perform 2 steps of sc2v for input module 
# and remove temporary files
#
# usage: sc2v <filename_without_extension>
#
bindir=`dirname $0`
$bindir/sc2v_step1 < $1.cpp
$bindir/sc2v_step2 < $1.h > $1.sc2v
$bindir/sc2v_step3 < $1.sc2v > $1.v
\rm *.sc2v
