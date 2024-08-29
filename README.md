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

DATA ENGINEERING 
- Extract excel files from sources: https://afdc.energy.gov/vehicle-registration?year=2016 and https://afdc.energy.gov/stations/states)
    * source file datasets: alt_fuel_stations (Aug 16 2024) (1).csv and EV_registration_2016_to_2022.csv
    * Note: EV_registration_2016_to_2022.csv was compile from multiple files from the /afdc.energy.gov site as a single set of data for years 2016-2022 was needed. 
- Transform data by dropping unwanted (where all cells are blank)columns, updating data types, inserting 0 values inplace of blank cell values, creating a series, and mapping of state id assignment to create unique state IDs for merging of data.
    * data frames created after transformation was completed: df_EV_Details and df_registration_data
- Load data by building entity relationship diagram (using Quick db for table/relationship creation) referring schema_sql script and importing CSV files into PostgreSQL database, for database & table creation and data loading.
    * tables created : electric_stations, and registration_data and SQL created for schema_sql2 
- Database was exported from PostGres into csv files to enable visualizations to referance db data.
    * CSV exported for database: df_long_data.xlsx and EV_Deatils.csv  

We simplified the database structure by using only two tables related to each data source for more efficient reporting. One table contains details of EV charging stations, and the other contains registration data for each US state from 2016 through 2022. To enable a join between both sources, a state ID column was added to match and align the data between the two tables, where one source uses the full state name and the other uses the state abbreviation.  

EV Charging Stations Details:
The EV charging stations data provided comprehensive details for all EV charging station locations across the US. While the dataset contained many elements, we primarily focused on the infrastructure details relevant to electric vehicles. The data allowed us to showcase the distribution of charging stations across different states and regions, their associated charging speeds (medium and fast charge), and how the growth in station availability aligned with EV registrations from 2016 to 2022.
Registration Data Details (EV Vehicle Registration Count per US State, 2016–2022):
The registration data was complete, with no gaps in registration counts, and included data for all US states and territories.

DATA VISUALIZATION

Use Altair to create maps that will show the following:
- EV charging stations across US and per state: chloropeth maps overlayed by scattered plot and bubble charts to show how distributed the charging stations are across the US and which state is leading in EV charging infrastructure
- EV charging stations speed per state (L2 and DC Fast charging stations):  interactive map, allowing users to select different charger types and states, and dynamically update and save the visualizations
- EV charging station per state & the # of EVs: created the line charts. The nature of the chart allows users to explore specific details about each state and how its EV market has evolved year by year. Visualize the trend of electric vehicle (EV) registrations & # of Stations built across different U.S. states over the years 2016 to 2022

Highlights
1. EV adoption is rapidly growing, and electric vehicles are now available coast-to-coast, from California to New York.
Major automakers are offering a diverse range of EVs, ensuring everyone can find the right fit for their needs.
2. The charging infrastructure is evolving quickly with thousands of stations nationwide, providing easy access to charging.
Charging speeds are faster than ever, with medium and high-speed options that allow drivers to recharge quickly and continue their journey.
3. As EV sales climb, charging station openings are increasing in parallel, ensuring that drivers have plenty of options wherever they are.
--------
-------
Ethical Data Practices

Source Credibility: All data sources used in this project are publicly accessible

Transparency: Aside from data sources, we are transparent about the data sources and transformations applied. Detailed information about data extraction, transformation, and loading procedures is provided in our notebook.







