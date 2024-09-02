# Extract Transform Load 
## Technical Final Report


### Team Members:
Rachel Newberry, Madhusudan Tamrakar, and Donia Tarjam.

<hr>
<b>Overview</b> – This ETL technical report takes the user through the stages of extraction, transformation, and loading the data. The project incorporates Olympic statistics from two different data sources for data clean up and analysis. The report will supply and include steps taken to complete the ETL process. 


<hr>

## Extract

The original data sources, obtained from Kaggle and data.world, were both originally formatted as CSV’s files. The Athlete_Events file came from Kaggle, and the Olympics CSV file came from data.world. The search originated with deciding on a topic of interest and seeing how the Olympics are in play, made this topic timely, interesting, and plenty of data to analyze. 


The first step was to pull and read the data in a Pandas Data Frame after pulling in the necessary dependencies importing pandas, sqlalchemy, create_engine, and psycopg2.


Once that was complete the extraction process could begin with locating, reading, and printing the data into a visual display to be able to transform the data for each data set. 
 

Sources of CSV Data Sets

Olympics - https://data.world/johayes13/summer-winter-olympic-games/workspace/file?filename=Olympics.csv

Athlete_Events - https://www.kaggle.com/heesoo37/120-years-of-olympic-history-athletes-and-results



## Transform


The transformation portion involved selecting, cleaning, and filtering the columns that would be utilized in the tables.  Each file is cleaned separately before joining them together. First, we selected the desired columns followed by renaming each column to a more organized and descriptive naming convention. Next, we cleaned the data by dropping any duplicates and setting the index. Then printed the cleaned data frame to visually see the outcome. 
 

The same process was repeated for the second data set in order to merge and join the data together. All of the steps were coded in Python and Pandas…


## Load

Tables were created in Postgres SQL to load the data. This process begins with creating a connection with an engine to export the data from Pandas into the SQL tables. 

 
There were two tables created one for the Olympics data set and the other athlete events file. A primary key was set for the country code since they were identical data. Columns include in the Olympics table include the country code, country name, and the number of medals won by each nation. The second table included the data for country code, team, and the events for each nation. From there the data was selected and joined together into one relational table. 


The data was finally loaded and appended and confirmed that the data was been added by querying the Olympics and athlete_events table and joining the tables on country_id column.
 




Rachel Newberry

rachellnewberry@yahoo.com
