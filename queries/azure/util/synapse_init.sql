-- If you do not have a Master Key on your DW you will need to create one.
CREATE MASTER KEY ENCRYPTION BY PASSWORD = '<password_placeholder>' ;

CREATE DATABASE SCOPED CREDENTIAL ADLS_credential
WITH
  IDENTITY = '<storage_placeholder>' ,
  SECRET = '<secret_placeholder>'
;

-- Note this example uses a Gen2 secured endpoint (abfss)
CREATE EXTERNAL DATA SOURCE TpcHData
WITH
  ( LOCATION = 'abfss://datalake@<storage_placeholder>.dfs.core.windows.net' ,
    CREDENTIAL = ADLS_credential ,
    TYPE = HADOOP
  ) ;

-- 2. Create the external file format for Parquet
CREATE EXTERNAL FILE FORMAT TpcHParquetFormat
WITH (
    FORMAT_TYPE = PARQUET
);

-- 3. Create a schema for TPC-H tables
CREATE SCHEMA tpch;

