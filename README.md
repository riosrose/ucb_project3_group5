# ucb_project3_group5
Project Title: Accessibility of EV chargers across the US for ease of travel

Group Members:
- David Kim 
- V Iosif 
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
- Transform data by dropping unwanted columns, updating data types, tranposing columns and creating unique state IDs for merging of data 
- Load data by building entity relationship diagram from CSV files and importing CSV files into postgreSQL database
  
Data Visualization

Use Altair to create maps that will show the following:
- EV charging stations across US and per state: chloropeth maps overlayed by scattered plot and bubble charts
- EV charging stations speed per state (L2 and DC Fast charging stations):
- EV charging station per state & the # of EVs: created the line charts. The nature of the chart allows users to explore specific details about each state and how its EV market has evolved year by year. Visualize the trend of electric vehicle (EV) registrations & # of Stations built across different U.S. states over the years 2016 to 2022








