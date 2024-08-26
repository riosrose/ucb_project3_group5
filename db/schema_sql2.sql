-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "electric_stations" (
    "fuel_type_code" varchar   ,
    "state_id" int   ,
    "station_name" varchar   ,
    "street_address" varchar   ,
    "intersection_directions" varchar   ,
    "city" varchar   ,
    "state" varchar   ,
    "zip" varchar   ,
    "station_phone" varchar   ,
    "status_code" varchar   ,
    "groups_with_access_code" varchar   ,
    "cards_accepted" varchar   ,
    "ev_level1_evse_num" decimal   ,
    "ev_level2_evse_num" decimal   ,
    "ev_dc_fast_num" decimal   ,
    "ev_network" varchar   ,
    "geocode_status" varchar   ,
    "latitude" decimal   ,
    "longitude" decimal   ,
    "date_last_confirmed" date   ,
    "id" int   ,
    "updated_at" timestamp   ,
    "owner_type_code" varchar   ,
    "open_date" date   ,
    "country" varchar   ,
    "access_code" varchar   ,
    "federal_agency code" varchar   ,
    "facility_type" varchar   ,
    "maximum_vehicle_class" varchar   ,
    "ev_workplace_charging" boolean   ,
    CONSTRAINT "pk_electric_stations" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "registration_data" (
    "state" varchar  ,
    "yr_2016" int   ,
    "yr_2017" int   ,
    "yr_2018" int   ,
    "yr_2019" int   ,
    "yr_2020" int   ,
    "yr_2021" int   ,
    "yr_2022" int   ,
	"state_id" int  ,
    CONSTRAINT "pk_registration_data" PRIMARY KEY (
        "state_id"
     )
);

ALTER TABLE "electric_stations" ADD CONSTRAINT "fk_electric_stations_state_id" FOREIGN KEY("state_id")
REFERENCES "registration_data" ("state_id");


