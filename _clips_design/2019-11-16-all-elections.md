---
title: Live election results
string_date: ""
image_url: /images/thumbnails/2019-11-16-statewide.png
image_alt: Election app
deferred_image: false
tools: AWS, Bash, GIS, JavaScript (D3, Mapbox, React), Linux, Python
---
Live election results for Louisiana using precinct-level maps.
This required aggregating precinct GIS files from state and parish offices before correlating the maps with
precinct-level results from the Secretary of State.
On election night, data processing scripts sent results to the front end for constantly updating tables and maps.
