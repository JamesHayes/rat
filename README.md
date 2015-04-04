#Rat Sightings in NYC
-Jim Hayes [Email](mailto:jim@jimandjaime.net)
-Created: April 3, 2015
-Updated: April 4, 2015

##Intro
New York City provides the public with over 1000 datasets that are just waiting to be analyzed, each of which tells a story. In this case, I found a dataset that has tabulated all of the rat sightings that have been reported. I don't have any particular interest in rats, pest control, or other murine topics in general; I just thought it would be interesting to see any trends that may appear in the data.

##Scripts
There is one main R script, ratSightings.R, that is located in the main folder of this project. All of the resultant output graphics are automatically saved to the results/ folder.

##Data
There are 2 datasets for this project: the rat sightings data and the 2010 census data. The script will automatically download the census data, however, please download the rat sighting data on your own. The data used for the analysis if found in the data/ folder of this git archive. Below are the links to the actual files.
-[Rat_Sightings.csv](https://data.cityofnewyork.us/Social-Services/Rat-Sightings/3q43-55fe)
-[census2010.csv](http://www2.census.gov/geo/docs/maps-data/data/rel/zcta_tract_rel_10.txt)

###Other Notes:
Folder structure of this repo was modeled off of:
[Noble WS 2009 A Quick Guide to Organizing Computational Biology Projects. PLoS Comput Biol 5 7: e1000424. doi:10.1371/journal.pcbi.1000424](http://dx.doi.org/10.1371/journal.pcbi.1000424)
The script used to generate this repo was modified from [this](https://github.com/chendaniely/computational-project-cookie-cutter) github repo.