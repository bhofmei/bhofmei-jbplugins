#!/bin/bash

# INSTALL SCRIPT

# assumes that getopts is installed
# possible options:
# -h (print usage)
# -q (quiet do not print progress)
# -d (desktop install, don't print output config)
# -j (print config in JSON format)
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
  echo "Usage: install.sh [-h] [-j] [-d] [-p <prefix>] [-c <config file>] <command>"
  echo ""
  echo "  Will install the plugins specified in the config file located at path"
  echo "  When '-d' is not set, will print JBrowse config for the plugins installed to be included in"
  echo "  'jbrowse.conf' or 'jbrowse_conf.json' when -j is specified"
  echo ""
  echo "Options:"
  echo "-h         Print help menu"
  echo "-q         Quiet; don't print progress"
  echo "-j         Output JBrowse config in JSON format for 'jbrowse_conf.json'"
  echo "             Default outputs for 'jbrowse.conf'"
  echo "-d         Desktop install - do not print ouput JBrowse config"
  echo "-p prefix  Install in this directory; default is '../' which"
  echo "             should be the JBrowse plugin folder"
  echo "-c config  JSON file specifying which plugins to install/update"
  echo "             default is 'plugins.json'"
}

function installPlugin {
  # $1 PREFIX $2 name $3 URL $4 isJson $5 configpath $quiet
  prefix=$1
  name=$2
  url=$3
  json=$4
  configpath=$5
  quiet=$6

  #echo "git clone ${quiet} ${url} ${prefix}${name}" >&2
  git clone ${quiet} ${url} ${prefix}${name}
  if [[ $json == "true" ]]; then
    echo "    \"${2}\" : { \"location\" : \"${configpath}${name}\" },"
  else
    echo -e "\n[plugins.${name}]\nlocation = ${configpath}${name}"
  fi
}

PREFIX="../"
JSON=false
DESKTOP=false
CONFIG="plugins.json"
QUIET=""

while getopts "hqjdp:c:" opt; do
  case $opt in
    j)
      JSON=true
      ;;
    d)
      DESKTOP=true
      ;;
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

if [[ ${QUIET} == "" ]]; then
  echo ""
  echo "Config file: $CONFIG"
  echo "Path: $PREFIX"
  echo "JSON output format: $JSON"
  echo ""
fi
curpath=`pwd`

# make sure path ends in /
PREFIX=`echo "${PREFIX}/" | sed 's/\/\//\//'`
EXPPATH=$PREFIX

# when done correctly, should be installed at ../ but config says "plugins/"
if [[ $PREFIX == "../" && ${curpath} =~ plugins/(BhofmeiPlugins|bhofmei-jbplugins) ]]; then
  EXPPATH="plugins/"
else
  if [[ $PREFIX == "../" ]]; then
    echo "Unexpected path...output configuration text maybe incorrect relative to the root JBrowse directory"
    echo "Use '-p' parameter to ensure path is correct"
  fi;
fi;

BASE=https://github.com/bhofmei/
URLS=(jbplugin-hierarchicalcheckbox jbplugin-methylation jbplugin-motifdens jbplugin-seqview jbplugin-screenshot jbplugin-smallrna jbplugin-strandedplot jbplugin-trackscores jbplugin-wigglesvg jbplugin-yscale)
NAMES=(HierarchicalCheckboxPlugin MethylationPlugin MotifDensityPlugin SeqViewsPlugin ScreenShotPlugin SmallRNAPlugin StrandedPlotPlugin TrackScorePlugin WiggleSVGPlotPlugin YScaleMenuPlugin)

CONFTXT="" # output configuration text used for installation

for i in ${!NAMES[@]}; do
  name=${NAMES[i]}
  b=`readJSON ${CONFIG} ${name}`
  if [[ $b == "true" ]]; then
    u=${BASE}${URLS[i]}
    t=`installPlugin ${PREFIX} ${name} $u ${JSON} ${EXPPATH} ${QUIET}`
    #CONFTXT=`echo -e "${CONFTXT}\n${t}"`
    CONFTXT="${CONFTXT}${t}"
  fi;
done
# remove trailing comma if json format and add plugin section
if [[ $JSON == "true" ]]; then
  CONFTXT=${CONFTXT%?}
  CONFTXT=`echo -e "\"plugins\" : {${CONFTXT}\n}"`
fi;

# output results for config
if [[ $DESKTOP != "true" ]]; then
  echo ""
  echo ""
  if [[ $JSON == "true" ]]; then
    echo "Include in 'jbrowse_conf.json' or 'tracks_conf.json"
    echo ""
    echo "$CONFTXT"
    echo ""
    echo "Double check for correct JSON syntax"
  else
    echo "Include in [GENERAL] section of 'jbrowse.conf' or 'tracks.conf'"
    echo -e "$CONFTXT"
  fi
fi;
exit 0
