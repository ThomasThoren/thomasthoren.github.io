---
title: Live election results
string_date: ""
clip_url: http://elections.thelensnola.org/
image_url: /images/thumbnails/2019-11-16-statewide.png
image_alt: Election app
deferred_image: false
tools: AWS S3, Bash, D3.js, GDAL/ogr2ogr, JavaScript, Leaflet, Make, Mapbox, Python, QGIS, React, TopoJSON
---
Live election results for Louisiana using precinct-level maps.
This requires aggregating precinct GIS files from state and parish offices before correlating the maps with
precinct-level results from the Secretary of State.
On election night, data processing scripts send results to a front end for constantly updating tables and maps.
