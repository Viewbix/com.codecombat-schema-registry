-- AUTO-GENERATED BY igluctl DO NOT EDIT
-- Generator: igluctl 0.2.0
-- Generated: 2017-01-13 17:02

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.com_codecombat_view_load_1 (
    "schema_vendor"           VARCHAR(128)     ENCODE RUNLENGTH NOT NULL,
    "schema_name"             VARCHAR(128)     ENCODE RUNLENGTH NOT NULL,
    "schema_format"           VARCHAR(128)     ENCODE RUNLENGTH NOT NULL,
    "schema_version"          VARCHAR(128)     ENCODE RUNLENGTH NOT NULL,
    "root_id"                 CHAR(36)         ENCODE RAW       NOT NULL,
    "root_tstamp"             TIMESTAMP        ENCODE LZO       NOT NULL,
    "ref_root"                VARCHAR(255)     ENCODE RUNLENGTH NOT NULL,
    "ref_tree"                VARCHAR(1500)    ENCODE RUNLENGTH NOT NULL,
    "ref_parent"              VARCHAR(255)     ENCODE RUNLENGTH NOT NULL,
    "user"                    CHAR(24)         ENCODE LZO       NOT NULL,
    "cached_resources"        DOUBLE PRECISION ENCODE RAW,
    "first_load"              BOOLEAN          ENCODE RUNLENGTH,
    "network_time"            DOUBLE PRECISION ENCODE RAW,
    "total_encoded_body_size" DOUBLE PRECISION ENCODE RAW,
    "total_resources"         DOUBLE PRECISION ENCODE RAW,
    "total_time"              DOUBLE PRECISION ENCODE RAW,
    "total_transfer_size"     DOUBLE PRECISION ENCODE RAW,
    "view_id"                 VARCHAR(4096)    ENCODE LZO,
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);

COMMENT ON TABLE atomic.com_codecombat_view_load_1 IS 'iglu:com.codecombat/view_load/jsonschema/1-0-0';
