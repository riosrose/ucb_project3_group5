# ucb_project3_group5
Project Title: Accessibility of EV chargers across the US for ease of travel

Group Members:
- David Kim 
- Iosif Vardoev
- RoseMary Rios  
- Jean Vicencio 

Overview:
In support of reducing the US carbon footprint via use of EVs, this analysis seeks to showcase the availability of EV chargers by state and their unique charge speed rate. The goal of compiling this data is to enhance consumer confidence in the accessibility of EV charging infrastructure. This will help potential and current EV owners better plan their travels and encourage broader adoption of EVs.

Key Tasks and Goals:  
- Showcase Density and distribution of EV chargers in the US 
- Categorize Charging stations based on the type of chargers to understand the availability of different charging speeds
- Correlate EV registration vs charger availability  

Scope:
- 2016 to 2022
  
Procedure:

Data Engineering 
- Extract excel files from sources: https://afdc.energy.gov/vehicle-registration?year=2016 and https://afdc.energy.gov/stations/states)
    * source file datasets: alt_fuel_stations (Aug 16 2024) (1).csv and EV_registration_2016_to_2022.csv
    * Note: EV_registration_2016_to_2022.csv was compile from multiple files from the /afdc.energy.gov site as a single set of data for years 2016-2022 was needed. 
- Transform data by dropping unwanted (where all cells are blank)columns, updating data types, inserting 0 values inplace of blank cell values, tranposing columns and creating unique state IDs for merging of data.
    * dataframes created after transformation was completed : df_EV_Details and df_registration_data
- Load data by building entity relationship diagram (using Quick db for table/relatinship creation) referancing schema_sql script and importing CSV files into postgreSQL database, for database & table creation and data loading.
    * tables created : electric_stations, and registration_data and SQL created for schema_sql2 
- Database was exported from PostGres into csv files to enable visulizations to referance db data.
    * csv exported for database : df_long_data.xlsx and EV_Deatils.csv  
  
Data Visualization

Use Altair to create maps that will show the following:
- EV charging stations across US and per state: chloropeth maps overlayed by scattered plot and bubble charts to show how distributed the charging stations are across the US and which state is leading in EV charging infrastructure
- EV charging stations speed per state (L2 and DC Fast charging stations):  interactive map, allowing users to select different charger types and states, and dynamically update and save the visualizations
- EV charging station per state & the # of EVs: created the line charts. The nature of the chart allows users to explore specific details about each state and how its EV market has evolved year by year. Visualize the trend of electric vehicle (EV) registrations & # of Stations built across different U.S. states over the years 2016 to 2022

Ethical Data Practices

Source Credibility: All data sources used in this project are publicly accessible

Transparency: Aside from data sources, we are transparent about the data sources and transformations applied. Detailed information about data extraction, transformation, and loading procedures is provided in our notebook.







