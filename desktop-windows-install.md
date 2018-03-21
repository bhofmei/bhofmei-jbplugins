# Desktop JBrowse Installation on Windows Systems

## Hierarchical Checkbox Plugin
1. Download **[plugin](https://github.com/bhofmei/jbplugin-hierarchicalcheckbox/archive/master.zip)** to desitination directory.
2. Unzip the download and rename the folder `HierarchicalCheckboxPlugin`.
3. In _tracks.conf_ of datset directory to be opened in Desktop JBrowse, add
```
[plugins.HierarchicalCheckboxPlugin]
location = full-path-to-plugin/HierarchicalCheckboxPlugin
```
4. See [plugin repository](https://github.com/bhofmei/jbplugin-hierarchicalcheckbox) for usage information.

## Methylation Plugin
1. Download **[plugin](https://github.com/bhofmei/jbplugin-methylation/archive/master.zip)** to desitination directory.
2. Unzip the download and rename the folder `MethylationPlugin`.
3. In _tracks.conf_ of datset directory to be opened in Desktop JBrowse, add
```
[plugins.MethylationPlugin]
location = full-path-to-plugin/MethylationPlugin
isAnimal = false
extendedModifications = false
```
4. See [plugin repository](https://github.com/bhofmei/jbplugin-methylation) for additional [configuration options](https://github.com/bhofmei/jbplugin-methylation#plugin-configuration-options) and usage information.

## Motif Density Plugin
1. Download **[plugin](https://github.com/bhofmei/jbplugin-motifdens/archive/master.zip)** to desitination directory.
2. Unzip the download and rename the folder `MotifDensityPlugin`.
3. In _tracks.conf_ of datset directory to be opened in Desktop JBrowse, add
```
[plugins.MotifDensityPlugin]
location = full-path-to-plugin/MotifDensityPlugin
```
4. See [plugin repository](https://github.com/bhofmei/jbplugin-motifdens) for usage information.

## Screenshot Plugin
The screenshot plugin **DOES NOT** work for the desktop version of JBrowse because internet-accessible URLs are necessary to create the screenshot.


## Sequence Views Plugins
1. Download **[plugin](https://github.com/bhofmei/jbplugin-seqview/archive/master.zip)** to desitination directory.
2. Unzip the download and rename the folder `SeqViewsPlugin`.
2. In _tracks.conf_ of datset directory to be opened in Desktop JBrowse, add
```
[plugins.SeqViewsPlugin]
location = full-path-to-plugin/SeqViewsPlugin
```
3. See [plugin repository](https://github.com/bhofmei/jbplugin-seqview) for usage information.

## Small RNA Plugin
1. Download **[plugin](https://github.com/bhofmei/jbplugin-smallrna/archive/master.zip)** to desitination directory.
2. Unzip the download and rename the folder `SmallRNAPlugin`.
3. In _tracks.conf_ of datset directory to be opened in Desktop JBrowse, add
```
[plugins.SmallRNAPlugin]
location = full-path-to-plugin/SmallRNAPlugin
isAnimal = false
```
4. See [plugin repository](https://github.com/bhofmei/jbplugin-smallrna) for additional configuration options and usage information.

## Stranded Plot Plugin
1. Download **[plugin](https://github.com/bhofmei/jbplugin-strandedplot/archive/master.zip)** to desitination directory.
2. Unzip the download and rename the folder `StrandedPlotPlugin`.
3. In _tracks.conf_ of datset directory to be opened in Desktop JBrowse, add
```
[plugins.StrandedPlotPlugin]
location = full-path-to-plugin/StrandedPlotPlugin
```
4. See [plugin repository](https://github.com/bhofmei/jbplugin-strandedplot) for usage information.

## Track Scores Plugin
1. Download **[plugin](https://github.com/bhofmei/jbplugin-trackscores/archive/master.zip)** to desitination directory.
2. Unzip the download and rename the folder `TrackScorePlugin`.
3. In _tracks.conf_ of datset directory to be opened in Desktop JBrowse, add
```
[plugins.TrackScorePlugin]
location = full-path-to-plugin/TrackScorePlugin
```
4. See [plugin repository](https://github.com/bhofmei/jbplugin-trackscores) for usage information.

## Wiggle SVG Plot Plugin
This plugin will work for Desktop JBrowse, but is not recommended to be used. The primary goal of the Wiggle SVG Plot Plugin is for screenshots with the [Screenshot Plugin](#screenshot-plugin) and the Screenshot Plugin does not work for Desktop JBrowse.

## Y-Scale Menu Plugin
1. Download **[plugin](https://github.com/bhofmei/jbplugin-yscale/archive/master.zip)** to desitination directory.
2. Unzip the download and rename the folder `YScaleMenuPlugin`.
3. In _tracks.conf_ of datset directory to be opened in Desktop JBrowse, add
```
[plugins.YScaleMenuPlugin]
location = full-path-to-plugin/YScaleMenuPlugin
```
4. See [plugin repository](https://github.com/bhofmei/jbplugin-yscale) for usage information.
