# Brigitte Hofmeister's JBrowse Plugins
All JBrowse plugins created by [Brigitte Hofmeister](https://github.com/bhofmei)

-------------

## Contents
- Epigenomics Visualization
  - [DNA Methylation Plugin](https://github.com/bhofmei/jbplugin-methylation): Visualize bp-resolution methylation levels colored by sequence context
  - [Small RNA Plugin](https://github.com/bhofmei/jbplugin-smallrna): Visualize small RNA alignments colored by size and stranded y-axis positioning
  - [Stranded Plot Plugin](https://github.com/bhofmei/jbplugin-strandedplot): Visualize plus and minus strand coverage in a single track simulataneously
- Additional Features
  - [Hierarchical Checkbox Plugin](https://github.com/bhofmei/jbplugin-hierarchicalcheckbox): "Select all" (or deselect all) tracks of a category in the hierarchical track list
  - [Motif Density Plugin](https://github.com/bhofmei/jbplugin-motifdens.git): Density map of user-specified sequence motifs and multiple color configuration options
  - [Screenshot Plugin](https://github.com/bhofmei/jbplugin-screenshot): Makes taking screenshots easy with PhantomJS
  - [Wiggle SVG Plot Plugin](https://github.com/bhofmei/jbplugin-wigglesvg): SVG-based track type for wiggle plots; most useful for screenshots
- User Experience
  - [Sequence Views Plugins](https://github.com/bhofmei/jbplugin-seqview): Force feature or histogram views
  - [Track Scores Plugin](https://github.com/bhofmei/jbplugin-trackscores): Adds a track menu item to change between autoscale types and manual limits
  - [Y-Scale Plugin](https://github.com/bhofmei/jbplugin-yscale): Adds global menu option to set the y-scale position of all visible tracks

## Installation for Web-Browser-Based JBrowse

* This works for UNIX systems only (to my knowledge).
* Install/activate - See [browser installation](browser-unix-install.md) for steps to download plugins of interest.
* Update - In the plugin directory to be updated, run
```
git pull
```

## Installation for Desktop JBrowse

### UNIX systems
* Install/active - See [unix desktop installation](desktop-unix-install.md) for steps to download plugins of interest.
* Update - In the plugin directory to be updated, run
```
git pull
```

### Windows systems
* Install/activate - See [windows desktop installation](desktop-windows-install.md) for steps to download plugins of interest.
* Update - Plugin must be reinstalled; see [desktop installation](desktop-windows-install.md) and replace the existing plugin.

## Fine Print
All plugins are distributed under the Apache License, Version 2.0.
