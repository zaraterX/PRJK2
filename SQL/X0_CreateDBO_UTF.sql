------------
--DELETE DBS
------------
DROP DATABASE IF EXISTS A_STG
GO

DROP DATABASE IF EXISTS B_DW
GO

DROP DATABASE IF EXISTS C_DM
GO

------------
--CREATE DBS
------------
CREATE DATABASE A_STG COLLATE Latin1_General_100_CI_AI_SC_UTF8
GO

CREATE DATABASE B_DW COLLATE Latin1_General_100_CI_AI_SC_UTF8
GO

CREATE DATABASE C_DM COLLATE Latin1_General_100_CI_AI_SC_UTF8
GO

