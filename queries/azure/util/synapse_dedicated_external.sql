-- 4. Import TPC-H tables using CTAS
-- Example for the "nation" table
CREATE EXTERNAL TABLE tpch.nation_ext
(
    N_NATIONKEY INT,
    N_NAME NVARCHAR(25),
    N_REGIONKEY INT,
    N_COMMENT NVARCHAR(152)
)
WITH (
    DATA_SOURCE = TpcHData,
    LOCATION = '/raw/nation.parquet',
    FILE_FORMAT = TpcHParquetFormat
);

-- region table
CREATE EXTERNAL TABLE tpch.region_ext
(
    R_REGIONKEY INT,
    R_NAME NVARCHAR(25),
    R_COMMENT NVARCHAR(152)
)
WITH (
    DATA_SOURCE = TpcHData,
    LOCATION = '/raw/region.parquet',
    FILE_FORMAT = TpcHParquetFormat
);

-- part table
CREATE EXTERNAL TABLE tpch.part_ext
(
    P_PARTKEY INT,
    P_NAME NVARCHAR(55),
    P_MFGR NVARCHAR(25),
    P_BRAND NVARCHAR(10),
    P_TYPE NVARCHAR(25),
    P_SIZE INT,
    P_CONTAINER NVARCHAR(10),
    P_RETAILPRICE FLOAT,
    P_COMMENT NVARCHAR(23)
)
WITH (
    DATA_SOURCE = TpcHData,
    LOCATION = '/raw/part.parquet',
    FILE_FORMAT = TpcHParquetFormat
);

-- supplier table
CREATE EXTERNAL TABLE tpch.supplier_ext
(
    S_SUPPKEY INT,
    S_NAME NVARCHAR(25),
    S_ADDRESS NVARCHAR(40),
    S_NATIONKEY INT,
    S_PHONE NVARCHAR(15),
    S_ACCTBAL FLOAT,
    S_COMMENT NVARCHAR(101)
)
WITH (
    DATA_SOURCE = TpcHData,
    LOCATION = '/raw/supplier.parquet',
    FILE_FORMAT = TpcHParquetFormat
);

-- partsupp table
CREATE EXTERNAL TABLE tpch.partsupp_ext
(
    PS_PARTKEY INT,
    PS_SUPPKEY INT,
    PS_AVAILQTY INT,
    PS_SUPPLYCOST FLOAT,
    PS_COMMENT NVARCHAR(199)
)
WITH (
    DATA_SOURCE = TpcHData,
    LOCATION = '/raw/partsupp.parquet',
    FILE_FORMAT = TpcHParquetFormat
);

-- customer table
CREATE EXTERNAL TABLE tpch.customer_ext
(
    C_CUSTKEY INT,
    C_NAME NVARCHAR(25),
    C_ADDRESS NVARCHAR(40),
    C_NATIONKEY INT,
    C_PHONE NVARCHAR(15),
    C_ACCTBAL FLOAT,
    C_MKTSEGMENT NVARCHAR(10),
    C_COMMENT NVARCHAR(117)
)
WITH (
    DATA_SOURCE = TpcHData,
    LOCATION = '/raw/customer.parquet',
    FILE_FORMAT = TpcHParquetFormat
);

--DROP EXTERNAL TABLE tpch.orders_ext
-- orders table
CREATE EXTERNAL TABLE tpch.orders_ext
(
    O_ORDERKEY INT,
    O_CUSTKEY INT,
    O_ORDERSTATUS CHAR(1),
    O_TOTALPRICE FLOAT,
    O_ORDERPRIORITY CHAR(15),
    O_CLERK NVARCHAR(15),
    O_SHIPPRIORITY INT,
    O_COMMENT NVARCHAR(79),
    O_ORDERDATE DATETIME2
)
WITH (
    DATA_SOURCE = TpcHData,
    LOCATION = '/raw/orders.parquet',
    FILE_FORMAT = TpcHParquetFormat
);


--drop external table tpch.lineitem_ext
CREATE EXTERNAL TABLE tpch.lineitem_ext
(
    L_ORDERKEY BIGINT,
    L_PARTKEY BIGINT,
    L_SUPPKEY BIGINT,
    L_LINENUMBER BIGINT,
    L_QUANTITY FLOAT,
    L_EXTENDEDPRICE FLOAT,
    L_DISCOUNT FLOAT,
    L_TAX FLOAT,
    L_RETURNFLAG CHAR(1),
    L_LINESTATUS CHAR(1),
    L_SHIPINSTRUCT CHAR(25),
    L_SHIPMODE CHAR(10),
    L_COMMENT NVARCHAR(44),
    L_SHIPDATE DATETIME2,
    L_COMMITDATE DATETIME2,
    L_RECEIPTDATE DATETIME2
)
WITH (
    DATA_SOURCE = TpcHData,
    LOCATION = '/raw/lineitem.parquet',
    FILE_FORMAT = TpcHParquetFormat
);