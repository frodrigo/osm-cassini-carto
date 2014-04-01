#!/bin/bash
set -e -u

UNZIP_OPTS=-qqu

# create and populate data dir

mkdir -p data/
mkdir -p data/simplified-land-polygons-complete-3857

# simplified-land-polygons-complete-3857
echo "downloading simplified-land-polygons-complete-3857..."
curl -z "data/simplified-land-polygons-complete-3857.zip" -L -o "data/simplified-land-polygons-complete-3857.zip" "http://data.openstreetmapdata.com/simplified-land-polygons-complete-3857.zip"
echo "simplified-land-polygons-complete-3857..."
unzip $UNZIP_OPTS data/simplified-land-polygons-complete-3857.zip simplified-land-polygons-complete-3857/simplified_land_polygons.{shp,shx,prj,dbf,cpg} -d data/

#index
echo "indexing shapefiles"

shapeindex --shape_files \
data/simplified-land-polygons-complete-3857/simplified_land_polygons.shp

echo "...done!"
