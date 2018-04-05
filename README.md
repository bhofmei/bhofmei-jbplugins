# Brigitte Hofmeister's JBrowse Plugins
All JBrowse plugins created by [Brigitte Hofmeister](https://github.com/bhofmei)

To see all the plugins in action, go to [https://bhofmei.github.io/bhofmei-jbplugins/](https://bhofmei.github.io/bhofmei-jbplugins/).
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

## JBrowse Versions

These plugins are designed for JBrowse v1.11.6 - v1.12.6. Installation directions are for these versions.

JBrowse v1.13.0+ uses a radically different system to download dependencies and build the site. The plugins are likely to work as-is but have not been tested extensively. See the [JBrowse documentation](http://jbrowse.org/jbrowse-1-13-0-release/) for more information.

## Installation for Unix Systems

### For Web-Browser-Based JBrowse

#### Bulk installation
1. Add this repositiory to the plugin folder of JBrowse, i.e. `jbrowse-root/plugins/`.
```
git clone https://github.com/bhofmei/bhofmei-jbplugins BhofmeiPlugins
```
2. Update `plugins.json` to install the plugins you are interested in
  - Default is to install all
  - Set to `false` for plugins not to install
3. Run `install.sh`
  - Assumes that this script is located at `jbrowse-root/plugins/BhofmeiPlugins`
  - Use `-p prefix` to specify the install directory if this script is located elsewhere
  - See `install.sh -h` for additional parameters
4. Copy the output to `jbrowse.conf` or a dataset `tracks.conf` as applicable
  - If you prefer to use the JSON specification for `jbrowse_conf.json` or `trackList.json`, run as `install.sh -j`
5. See the indivual plugin repositiories for plugin-specific configuration options

#### Individual plugin installation
See [browser-unix-install.md](browser-unix-install.md).

### For Desktop-Based JBrowse
#### Bulk installation
1. Install this repository in desired directory
```
git clone https://github.com/bhofmei/bhofmei-jbplugins BhofmeiPlugins
```
2. Update `plugins.json` to install the plugins you are interested in
  - Default is to install all
  - Set to `false` for plugins not to install
3. Run `install.sh -d -p <prefix>`
  - Use `-p <prefix>` to specify the directory to install the plugins. The default is `../`
  - When prefix is a relative path, it resolves the path and uses the absolute path for the output config
4. Copy the output to `tracks.conf` for the dataset directory to be opened
  - If you prefer the JSON specification, run with the `-j` option and copy output to `trackList.json`
5. See the indivual plugin repositiories for plugin-specific configuration options

#### Individual plugin installation
See [desktop-unix-install.md](desktop-unix-install.md).

## Installation for Windows Systems Desktop-Based JBrowse
See [windows desktop installation](desktop-windows-install.md) for steps to download plugins of interest.

## Updating for Unix Systems

#### Bulk updating
1. In `plugins.json`, specify which plugins to update
  - Use `true` to update
  - Use `false` if not installed or don't want updated
2. Run `update.sh`
  - By default, looks for plugins at `../`. If they are installed elsewhere, you `-p <prefix>` where `<prefix>` is the aboslute or relative path to the directory where all plugins are installed.
  - Run `update.sh -h` to see the other options
 
#### Individual plugin updating
To update a single plugin, run `git pull` within the plugin directory

## Updating for Windows Systems

Plugin must be reinstalled; see [windows installation](desktop-windows-install.md) and replace the existing plugin.

## Citation

If these plugins are used for research or publication, please cite the following. I've spent a lot of time on these and would appreciate the recognition.

Enhanced JBrowse plugins for epigenomics data visualization
Brigitte T. Hofmeister, Robert J. Schmitz
bioRxiv 212654; doi: https://doi.org/10.1101/212654

You can read the original article at [bioRxiv](https://www.biorxiv.org/content/early/2017/11/01/212654).

#### Fine Print
All plugins are distributed under the Apache License, Version 2.0.
