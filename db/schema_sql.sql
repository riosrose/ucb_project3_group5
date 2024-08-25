-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "electric_stations" (
    "uid" int64   NOT NULL,
    "fuel_type_code" object   NOT NULL,
    "station_name" object   NOT NULL,
    "street_address" object   NOT NULL,
    "intersection_directions" object   NOT NULL,
    "city" object   NOT NULL,
    "state" object   NOT NULL,
    "zip" object   NOT NULL,
    "station_phone" object   NOT NULL,
    "status_code" object   NOT NULL,
    "groups_with_access_code" object   NOT NULL,
    "cards_accepted" object   NOT NULL,
    "ev_level1_evse_num" float64   NOT NULL,
    "ev_level2_evse_num" float64   NOT NULL,
    "ev_dc_fast_num" float64   NOT NULL,
    "ev_network" object   NOT NULL,
    "geocode_statuse" object   NOT NULL,
    "latitude" float64   NOT NULL,
    "longitude" float64   NOT NULL,
    "date_last_confirmed" date   NOT NULL,
    "id" int64   NOT NULL,
    "updated_at" timestamp   NOT NULL,
    "owner_type_code" varchar   NOT NULL,
    "open_date" date   NOT NULL,
    "country" object   NOT NULL,
    "access_code" object   NOT NULL,
    "federal_agency code" object   NOT NULL,
    "facility_type" object   NOT NULL,
    "maximum_vehicle_class" object   NOT NULL,
    "ev_workplace_charging" boolean   NOT NULL,
    CONSTRAINT "pk_electric_stations" PRIMARY KEY (
        "uid"
     )
);

CREATE TABLE "registration_data" (
    "id" int64   NOT NULL,
    "state" object   NOT NULL,
    "year" int64   NOT NULL,
    "count_by_year" int64   NOT NULL,
    CONSTRAINT "pk_registration_data" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "states_id" (
    "ID" int64   NOT NULL,
    "state" object   NOT NULL,
    CONSTRAINT "pk_states_id" PRIMARY KEY (
        "ID"
     )
);

ALTER TABLE "electric_stations" ADD CONSTRAINT "fk_electric_stations_state" FOREIGN KEY("state")
REFERENCES "states_id" ("ID");

ALTER TABLE "registration_data" ADD CONSTRAINT "fk_registration_data_id" FOREIGN KEY("id")
REFERENCES "states_id" ("ID");

