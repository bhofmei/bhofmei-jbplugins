# Web Browser JBrowse Installation on UNIX Systems

## Hierarchical Checkbox Plugin
1. In the JBrowse _plugins_ folder, run
```
git clone https://github.com/bhofmei/jbplugin-hierarchicalcheckbox HierarchicalCheckboxPlugin
```
2. In _jbrowse.conf_ (all datatsets can use it) or _tracks.conf_ (specific dataset uses it), add
```
[plugins.HierarchicalCheckboxPlugin]
location = plugins/HierarchicalCheckboxPlugin
```
3. See [plugin repository](https://github.com/bhofmei/jbplugin-hierarchicalcheckbox) for usage information.

## Methylation Plugin
1. In the JBrowse _plugins_ folder, run
```
git clone https://github.com/bhofmei/jbplugin-methylation MethylationPlugin
```
2. In _jbrowse.conf_ (all datatsets can use it) or _tracks.conf_ (specific dataset uses it), add
```
[plugins.MethylationPlugin]
location = plugins/MethylationPlugin
isAnimal = false
extendedModifications = false
```

While plugin declaration should not be included in both _jbrowse.conf_ and _tracks.conf_, configuration options can be changed.

For example, if most data sets don't need extended modifications, include in _jbrowse.conf_
```
[plugins.MethylationPlugin]
location = plugins/MethylationPlugin
extendedModifications = false
```

For the data which **does** need extended modifications, include in _tracks.conf_
```
[plugins.MethylationPlugin]
extendedModifications = true
```

3. See [plugin repository](https://github.com/bhofmei/jbplugin-methylation) for additional [configuration options](https://github.com/bhofmei/jbplugin-methylation#plugin-configuration-options) and usage information.

## Motif Density Plugin
1. In the JBrowse _plugins_ folder, run
```
git clone https://github.com/bhofmei/jbplugin-motifdens MotifDensityPlugin
```
2. In _jbrowse.conf_ (all datatsets can use it) or _tracks.conf_ (specific dataset uses it), add
```
[plugins.MotifDensityPlugin]
location = plugins/MotifDensityPlugin
```
3. See [plugin repository](https://github.com/bhofmei/jbplugin-motifdens) for usage information.

## Screenshot Plugin
1. In the JBrowse _plugins_ folder, run
```
git clone https://github.com/bhofmei/jbplugin-screenshot ScreenShotPlugin
```
2. In _jbrowse.conf_ (all datatsets can use it) or _tracks.conf_ (specific dataset uses it), add
```
[plugins.ScreenShotPlugin]
location = plugins/ScreenShotPlugin
apiKey = <optional_api_key>
htmlFeatures = false
```
3. See [plugin repository](https://github.com/bhofmei/jbplugin-screenshot) for additional configuration options and usage information.

## Sequence Views Plugins
1. In the JBrowse _plugins_ folder, run
```
git clone https://github.com/bhofmei/jbplugin-seqview SeqViewsPlugin
```
2. In _jbrowse.conf_ (all datatsets can use it) or _tracks.conf_ (specific dataset uses it), add
```
[plugins.SeqViewsPlugin]
location = plugins/SeqViewsPlugin
```
3. See [plugin repository](https://github.com/bhofmei/jbplugin-seqview) for usage information.

## Small RNA Plugin
1. In the JBrowse _plugins_ folder, run
```
git clone https://github.com/bhofmei/jbplugin-smallrna SmallRNAPlugin
```
2. In _jbrowse.conf_ (all datatsets can use it) or _tracks.conf_ (specific dataset uses it), add
```
[plugins.SmallRNAPlugin]
location = plugins/SmallRNAPlugin
isAnimal = false
```
3. See [plugin repository](https://github.com/bhofmei/jbplugin-smallrna) for additional configuration options and usage information.

## Stranded Plot Plugin
1. In the JBrowse _plugins_ folder, run
```
git clone https://github.com/bhofmei/jbplugin-strandedplot StrandedPlotPlugin
```
2. In _jbrowse.conf_ (all datatsets can use it) or _tracks.conf_ (specific dataset uses it), add
```
[plugins.StrandedPlotPlugin]
location = plugins/StrandedPlotPlugin
```
3. See [plugin repository](https://github.com/bhofmei/jbplugin-strandedplot) for usage information.

## Track Scores Plugin
1. In the JBrowse _plugins_ folder, run
```
git clone https://github.com/bhofmei/jbplugin-trackscores TrackScorePlugin
```
2. In _jbrowse.conf_ (all datatsets can use it) or _tracks.conf_ (specific dataset uses it), add
```
[plugins.TrackScorePlugin]
location = plugins/TrackScorePlugin
```
3. See [plugin repository](https://github.com/bhofmei/jbplugin-trackscores) for usage information.

## Wiggle SVG Plot Plugin
1. In the JBrowse _plugins_ folder, run
```
git clone https://github.com/bhofmei/jbplugin-wigglesvg WiggleSVGPlotPlugin
```
2. In _jbrowse.conf_ (all datatsets can use it) or _tracks.conf_ (specific dataset uses it), add
```
[plugins.WiggleSVGPlotPlugin]
location = plugins/WiggleSVGPlotPlugin
```
3. See [plugin repository](https://github.com/bhofmei/jbplugin-wigglesvg) for usage information.

## Y-Scale Menu Plugin
1. In the JBrowse _plugins_ folder, run
```
git clone https://github.com/bhofmei/jbplugin-yscale YScaleMenuPlugin
```
2. In _jbrowse.conf_ (all datatsets can use it) or _tracks.conf_ (specific dataset uses it), add
```
[plugins.YScaleMenuPlugin]
location = plugins/YScaleMenuPlugin
```
3. See [plugin repository](https://github.com/bhofmei/jbplugin-yscale) for usage information.