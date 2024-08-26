-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "electric_stations" (
    "fuel_type_code" varchar   NOT NULL,
    "state_id" int   NOT NULL,
    "station_name" varchar   NOT NULL,
    "street_address" varchar   NOT NULL,
    "intersection_directions" varchar   NOT NULL,
    "city" varchar   NOT NULL,
    "state" varchar   NOT NULL,
    "zip" varchar   NOT NULL,
    "station_phone" varchar   NOT NULL,
    "status_code" varchar   NOT NULL,
    "groups_with_access_code" varchar   NOT NULL,
    "cards_accepted" varchar   NOT NULL,
    "ev_level1_evse_num" decimal   NOT NULL,
    "ev_level2_evse_num" decimal   NOT NULL,
    "ev_dc_fast_num" decimal   NOT NULL,
    "ev_network" varchar   NOT NULL,
    "geocode_status" varchar   NOT NULL,
    "latitude" decimal   NOT NULL,
    "longitude" decimal   NOT NULL,
    "date_last_confirmed" date   NOT NULL,
    "id" int   NOT NULL,
    "updated_at" timestamp   NOT NULL,
    "owner_type_code" varchar   NOT NULL,
    "open_date" date   NOT NULL,
    "country" varchar   NOT NULL,
    "access_code" varchar   NOT NULL,
    "federal_agency code" varchar   NOT NULL,
    "facility_type" varchar   NOT NULL,
    "maximum_vehicle_class" varchar   NOT NULL,
    "ev_workplace_charging" boolean   NOT NULL,
    CONSTRAINT "pk_electric_stations" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "registration_data" (
    "state_id" int   NOT NULL,
    "state" varchar   NOT NULL,
    "year" int   NOT NULL,
    "count_by_year" int   NOT NULL,
    CONSTRAINT "pk_registration_data" PRIMARY KEY (
        "state_id"
     )
);

ALTER TABLE "electric_stations" ADD CONSTRAINT "fk_electric_stations_state_id" FOREIGN KEY("state_id")
REFERENCES "registration_data" ("state_id");

