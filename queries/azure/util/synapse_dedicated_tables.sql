-- nation table
CREATE TABLE tpch.nation
WITH (
    DISTRIBUTION = HASH(N_NATIONKEY),
    CLUSTERED COLUMNSTORE INDEX
)
AS SELECT * FROM tpch.nation_ext;

-- region table
CREATE TABLE tpch.region
WITH (
    DISTRIBUTION = HASH(R_REGIONKEY),
    CLUSTERED COLUMNSTORE INDEX
)
AS SELECT * FROM tpch.region_ext;

-- part table
CREATE TABLE tpch.part
WITH (
    DISTRIBUTION = HASH(P_PARTKEY),
    CLUSTERED COLUMNSTORE INDEX
)
AS SELECT * FROM tpch.part_ext;

-- supplier table
CREATE TABLE tpch.supplier
WITH (
    DISTRIBUTION = HASH(S_SUPPKEY),
    CLUSTERED COLUMNSTORE INDEX
)
AS SELECT * FROM tpch.supplier_ext;

-- partsupp table
CREATE TABLE tpch.partsupp
WITH (
    DISTRIBUTION = HASH(PS_PARTKEY),
    CLUSTERED COLUMNSTORE INDEX
)
AS SELECT * FROM tpch.partsupp_ext;

-- customer table
CREATE TABLE tpch.customer
WITH (
    DISTRIBUTION = HASH(C_CUSTKEY),
    CLUSTERED COLUMNSTORE INDEX
)
AS SELECT * FROM tpch.customer_ext;

-- orders table
CREATE TABLE tpch.orders
WITH (
    DISTRIBUTION = HASH(O_ORDERKEY),
    CLUSTERED COLUMNSTORE INDEX
)
AS SELECT * FROM tpch.orders_ext;

-- lineitem table
CREATE TABLE tpch.lineitem
WITH (
    DISTRIBUTION = HASH(L_ORDERKEY),
    CLUSTERED COLUMNSTORE INDEX
)
AS SELECT * FROM tpch.lineitem_ext;
