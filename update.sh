#!/bin/bash

# UPDATE SCRIPT

# assumes that getopts is installed
# possible options:
# -h (print usage)
# -q (quiet do not print progress)
# -p <prefix> (path to install, default is ../)
# -c <file> (config file that has plugins, default plugins.json)

function readJSON {
  VALUE=`grep -m 1 "\"${2}\"" ${1} | sed 's/^ *//;s/.*: *//;s/,?//' | sed 's/,//'`
  if [ ! "$VALUE" ]; then
    echo false;
  else
    echo $VALUE;
  fi;
}

function useage(){
  echo ""
  echo "Usage: update.sh [-h] [-p <prefix>] [-c <config file>]"
  echo ""
  echo "  Will updated the plugins specified in the config file located at path"
  echo ""
  echo "Options:"
  echo "-h         Print help menu"
  echo "-q         Quiet; don't print progress"
  echo "-p prefix  Install in this directory; default is '../' which"
  echo "             should be the JBrowse plugin folder"
  echo "-c config  JSON file specifying which plugins to update"
  echo "             default is 'plugins.json'"
}

function updatePlugin {
  # $1 PREFIX $2 name $3 quiet
  prefix=$1
  name=$2
  quiet=$3
  cu=`pwd`
  cd ${prefix}${name}
  #echo "git pull" >&2
  git pull ${quiet}
  cd $cu
}

PREFIX="../"
CONFIG="plugins.json"
QUIET=""

while getopts "hqp:c:" opt; do
  case $opt in
    q)
      QUIET="-q"
      ;;
    p)
      PREFIX=$OPTARG
      ;;
    c)
      CONFIG=$OPTARG
      ;;
    h)
      useage
      exit 1
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      echo "Use -h for help"
      exit 1
      ;;
    :)
      echo "Option -$OPTARG requires an argument" >&2
      echo "Use -h for help"
      exit 1
      ;;
  esac
done


# make sure path ends in /
PREFIX=`echo "${PREFIX}/" | sed 's/\/\//\//'`

BASE=https://github.com/bhofmei/
URLS=(jbplugin-hierarchicalcheckbox jbplugin-methylation jbplugin-motifdens jbplugin-seqview jbplugin-screenshot jbplugin-smallrna jbplugin-strandedplot jbplugin-trackscores jbplugin-wigglesvg jbplugin-yscale)
NAMES=(HierarchicalCheckboxPlugin MethylationPlugin MotifDensityPlugin SeqViewsPlugin ScreenShotPlugin SmallRNAPlugin StrandedPlotPlugin TrackScorePlugin WiggleSVGPlotPlugin YScaleMenuPlugin)


for i in ${!NAMES[@]}; do
  name=${NAMES[i]}
  b=`readJSON ${CONFIG} ${name}`
  if [[ $b == "true" ]]; then
    if [[ $QUIET == "" ]]; then
      echo "Updating ${name}"
    fi;
    t=`updatePlugin ${PREFIX} ${name} ${QUIET}`
  fi;
done

