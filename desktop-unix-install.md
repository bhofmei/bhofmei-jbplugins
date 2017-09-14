# Desktop JBrowse Installation on UNIX Systems

## Hierarchical Checkbox Plugin
1. In destination directory, run
```
git clone https://github.com/bhofmei/jbplugin-hierarchicalcheckbox HierarchicalCheckboxPlugin
```
2. In _tracks.conf_ of datset directory to be opened in Desktop JBrowse, add
```
[plugins.HierarchicalCheckboxPlugin]
location = full-path-to-plugin/HierarchicalCheckboxPlugin
```
3. See [plugin repository](https://github.com/bhofmei/jbplugin-hierarchicalcheckbox) for usage information.

## Methylation Plugin
1. In destination directory, run
```
git clone https://github.com/bhofmei/jbplugin-methylation MethylationPlugin
```
2. In _tracks.conf_ of datset directory to be opened in Desktop JBrowse, add
```
[plugins.MethylationPlugin]
location = full-path-to-plugin/MethylationPlugin
isAnimal = false
extendedModifications = false
```
3. See [plugin repository](https://github.com/bhofmei/jbplugin-methylation) for additional [configuration options](https://github.com/bhofmei/jbplugin-methylation#plugin-configuration-options) and usage information.

## Motif Density Plugin
1. In destination directory, run
```
git clone https://github.com/bhofmei/jbplugin-motifdens MotifDensityPlugin
```
2. In _tracks.conf_ of datset directory to be opened in Desktop JBrowse, add
```
[plugins.MotifDensityPlugin]
location = full-path-to-plugin/MotifDensityPlugin
```
3. See [plugin repository](https://github.com/bhofmei/jbplugin-motifdens) for usage information.

## Screenshot Plugin
The screenshot plugin **DOES NOT** work for the desktop version of JBrowse because internet-accessible URLs are necessary to create the screenshot.


## Sequence Views Plugins
1. In destination directory, run
```
git clone https://github.com/bhofmei/jbplugin-seqview SeqViewsPlugin
```
2. In _tracks.conf_ of datset directory to be opened in Desktop JBrowse, add
```
[plugins.SeqViewsPlugin]
location = full-path-to-plugin/SeqViewsPlugin
```
3. See [plugin repository](https://github.com/bhofmei/jbplugin-seqview) for usage information.

## Small RNA Plugin
1. In destination directory, run
```
git clone https://github.com/bhofmei/jbplugin-smallrna SmallRNAPlugin
```
2. In _tracks.conf_ of datset directory to be opened in Desktop JBrowse, add
```
[plugins.SmallRNAPlugin]
location = full-path-to-plugin/SmallRNAPlugin
isAnimal = false
```
3. See [plugin repository](https://github.com/bhofmei/jbplugin-smallrna) for additional configuration options and usage information.

## Stranded Plot Plugin
1. In destination directory, run
```
git clone https://github.com/bhofmei/jbplugin-strandedplot StrandedPlotPlugin
```
2. In _tracks.conf_ of datset directory to be opened in Desktop JBrowse, add
```
[plugins.StrandedPlotPlugin]
location = full-path-to-plugin/StrandedPlotPlugin
```
3. See [plugin repository](https://github.com/bhofmei/jbplugin-strandedplot) for usage information.

## Track Scores Plugin
1. In destination directory, run
```
git clone https://github.com/bhofmei/jbplugin-trackscores TrackScorePlugin
```
2. In _tracks.conf_ of datset directory to be opened in Desktop JBrowse, add
```
[plugins.TrackScorePlugin]
location = full-path-to-plugin/TrackScorePlugin
```
3. See [plugin repository](https://github.com/bhofmei/jbplugin-trackscores) for usage information.

## Wiggle SVG Plot Plugin
This plugin will work for Desktop JBrowse, but is not recommended to be used. The primary goal of the Wiggle SVG Plot Plugin is for screenshots with the [Screenshot Plugin](#screenshot-plugin) and the Screenshot Plugin does not work for Desktop JBrowse.

## Y-Scale Menu Plugin
1. In destination directory, run
```
git clone https://github.com/bhofmei/jbplugin-yscale YScaleMenuPlugin
```
2. In _tracks.conf_ of datset directory to be opened in Desktop JBrowse, add
```
[plugins.YScaleMenuPlugin]
location = full-path-to-plugin/YScaleMenuPlugin
```
3. See [plugin repository](https://github.com/bhofmei/jbplugin-yscale) for usage information.