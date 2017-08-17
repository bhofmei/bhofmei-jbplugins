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
  - [Nucleotide Density Plugin](https://github.com/bhofmei/jbplugin-nucdens.git): Density map of user-specified nucleotide contexts and multiple color configuration options
  - [Screenshot Plugin](https://github.com/bhofmei/jbplugin-screenshot): Makes taking screenshots easy with PhantomJS
  - [Wiggle SVG Plot Plugin](https://github.com/bhofmei/jbplugin-wigglesvg): SVG-based track type for wiggle plots; most useful for screenshots
- User Experience
  - [Sequence Views Plugins](https://github.com/bhofmei/jbplugin-seqview): Force feature or histogram views
  - [Track Scores Plugin](https://github.com/bhofmei/jbplugin-trackscores): Adds a track menu item to change between autoscale types and manual limits
  - [Y-Scale Plugin](https://github.com/bhofmei/jbplugin-yscale): Adds global menu option to set the y-scale position of all visible tracks

## Installation

### Option 1: Install each plugin separately (preferred)
1. Using the URL links above, navigate to the GitHub repository of interest.
2. Following the directions in the repositiory README, install and activate the plugin.
  - In the JBrowse **plugins** directory, run `git clone <git-repo-url> <plugin_id>`
  - Add the plugin to **jbrowse.conf** as
  ```
  [plugins.plugin_id]
  location = plugins/plugin_id
  ```
  - Set plugin configuration options, if necessary
3. Although more annoying initially to install manually, it will be _much_ easier to update plugins (via `git pull`) as these plugins continue to be developed. In the specific plugin directory, **plugins/plugin_id** run `git pull`. Local changes can be pushed upstream with pull requests.

### Option 2: Install from npm
1. Ensure that npm is installed.
2. In the JBrowse **plugins** directory, run `git clone https://github.com/bhofmei/bhofmei-jbplugins BhofmeiPlugins`.
2. `cd BhofmeiPlugins`
3. Install the plugins using `npm install`
  - This will create a `node_modules` folder.
  - All plugins will be in this folder.
4. When adding the plugins to **jbrowse.conf**, the location must be to the **node_modules** directory. Note the plugin name is not the same as the plugin ID.
```
[plugins.plugin_id]
location = plugins/BhofmeiPlugins/node_modules/plugin-name
```
5. See [npm install configuration](npm_install_config.md) for examples of how to activate each plugin using **jbrowse.conf**.
5. See individual plugin README files for configuration and additional information (ignore install and activate sections)
6. All plugins will be updated at once. Use `npm update` to get the latest version of each plugin. Changes made locally cannot be pushed upstream (via pull request).