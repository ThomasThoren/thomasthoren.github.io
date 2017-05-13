---
title: Louisiana geographic data
side_project_url: //github.com/TheLens/geographic-data
image_url: /images/thumbnails/geographic-data.png
image_alt: Geographic data
repo: //github.com/TheLens/geographic-data
tools: GDAL/ogr2ogr, Make, Mapshaper, PostGIS, PostgreSQL, TopoJSON
---
This is a fully scripted geographic data-processing pipeline for Louisiana and New Orleans. It combines a [Makefile](https://github.com/TheLens/geographic-data/blob/master/Makefile) and command-line tools to download and convert raw geographic data into Shapefile, GeoJSON and TopoJSON file formats. This was created to eliminate duplicate work and increase development speed for new graphics.