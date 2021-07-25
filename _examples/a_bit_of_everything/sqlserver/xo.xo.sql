-- SQL Schema template for the a_bit_of_everything schema.
-- Generated on Sun Jul 25 07:09:41 WIB 2021 by xo.

CREATE TABLE a_bit_of_everything (
    a_bigint BIGINT(19) NOT NULL,
    a_bigint_nullable BIGINT(19),
    a_binary BINARY(1) NOT NULL,
    a_binary_nullable BINARY(1),
    a_bit BIT(1) NOT NULL,
    a_bit_nullable BIT(1),
    a_char CHAR(1) NOT NULL,
    a_char_nullable CHAR(1),
    a_date DATE(10) NOT NULL,
    a_date_nullable DATE(10),
    a_datetime DATETIME(23, 3) NOT NULL,
    a_datetime_nullable DATETIME(23, 3),
    a_datetime2 DATETIME2(27, 7) NOT NULL,
    a_datetime2_nullable DATETIME2(27, 7),
    a_datetimeoffset DATETIMEOFFSET(34, 7) NOT NULL,
    a_datetimeoffset_nullable DATETIMEOFFSET(34, 7),
    a_decimal DECIMAL(18) NOT NULL,
    a_decimal_nullable DECIMAL(18),
    a_float FLOAT(53) NOT NULL,
    a_float_nullable FLOAT(53),
    a_image IMAGE NOT NULL,
    a_image_nullable IMAGE,
    a_int INT(10) NOT NULL,
    a_int_nullable INT(10),
    a_money MONEY(19, 4) NOT NULL,
    a_money_nullable MONEY(19, 4),
    a_nchar NCHAR(1) NOT NULL,
    a_nchar_nullable NCHAR(1),
    a_ntext NTEXT NOT NULL,
    a_ntext_nullable NTEXT,
    a_numeric NUMERIC(18) NOT NULL,
    a_numeric_nullable NUMERIC(18),
    a_nvarchar NVARCHAR(1) NOT NULL,
    a_nvarchar_nullable NVARCHAR(1),
    a_real REAL(24) NOT NULL,
    a_real_nullable REAL(24),
    a_smalldatetime SMALLDATETIME(16) NOT NULL,
    a_smalldatetime_nullable SMALLDATETIME(16),
    a_smallint SMALLINT(5) NOT NULL,
    a_smallint_nullable SMALLINT(5),
    a_smallmoney SMALLMONEY(10, 4) NOT NULL,
    a_smallmoney_nullable SMALLMONEY(10, 4),
    a_text TEXT NOT NULL,
    a_text_nullable TEXT,
    a_time TIME(16, 7) NOT NULL,
    a_time_nullable TIME(16, 7),
    a_tinyint TINYINT(3) NOT NULL,
    a_tinyint_nullable TINYINT(3),
    a_varbinary VARBINARY(1) NOT NULL,
    a_varbinary_nullable VARBINARY(1),
    a_varchar VARCHAR(1) NOT NULL,
    a_varchar_nullable VARCHAR(1),
    a_xml XML NOT NULL,
    a_xml_nullable XML
);


CREATE TABLE a_foreign_key (
    a_key INT(10) CONSTRAINT a_key_fkey REFERENCES a_primary (a_key)
);


CREATE TABLE a_foreign_key_composite (
    a_key1 INT(10),
    a_key2 INT(10),
    CONSTRAINT a_foreign_key_composite_fkey FOREIGN KEY (a_key1, a_key2) REFERENCES a_primary_composite (a_key1, a_key2)
);


CREATE TABLE a_index (
    a_key INT(10)
);

CREATE INDEX a_index_idx ON a_index (a_key);

CREATE TABLE a_index_composite (
    a_key1 INT(10),
    a_key2 INT(10)
);

CREATE INDEX a_index_composite_idx ON a_index_composite (a_key1, a_key2);

CREATE TABLE a_manual_table (
    a_text NVARCHAR(255)
);


CREATE TABLE a_primary (
    a_key INT(10) NOT NULL,
    CONSTRAINT a_primary_pkey PRIMARY KEY (a_key)
);


CREATE TABLE a_primary_composite (
    a_key1 INT(10) NOT NULL,
    a_key2 INT(10) NOT NULL,
    CONSTRAINT a_primary_composite_pkey PRIMARY KEY (a_key1, a_key2)
);


CREATE TABLE a_primary_multi (
    a_key INT(10) NOT NULL,
    a_text NVARCHAR(255),
    CONSTRAINT a_primary_multi_pkey PRIMARY KEY (a_key)
);


CREATE TABLE a_sequence (
    a_seq INT(10) IDENTITY(1, 1),
    CONSTRAINT a_sequence_pkey PRIMARY KEY (a_seq)
);


CREATE TABLE a_sequence_multi (
    a_seq INT(10) IDENTITY(1, 1),
    a_text NVARCHAR(255),
    CONSTRAINT a_sequence_multi_pkey PRIMARY KEY (a_seq)
);


CREATE TABLE a_unique_index (
    a_key INT(10),
    CONSTRAINT a_unique_index_idx UNIQUE (a_key)
);


CREATE TABLE a_unique_index_composite (
    a_key1 INT(10),
    a_key2 INT(10),
    CONSTRAINT a_unique_index_composite_idx UNIQUE (a_key1, a_key2)
);


-- views
CREATE VIEW a_view_of_everything AS
  SELECT * FROM a_bit_of_everything;

CREATE VIEW a_view_of_everything_some AS
  SELECT a_bit, a_text FROM a_bit_of_everything;

-- procs
CREATE PROCEDURE a_0_in_0_out AS
BEGIN
  INSERT INTO a_manual_table (a_text) values ('')\;
END;

CREATE PROCEDURE a_0_in_1_out(@a_return INTEGER OUTPUT) AS
BEGIN
  SET @a_return = '10'\;
END;

CREATE PROCEDURE a_1_in_0_out (@a_param INTEGER) AS
BEGIN
  INSERT INTO a_manual_table (a_text) values ('')\;
END;

CREATE PROCEDURE a_1_in_1_out(@a_param INTEGER, @a_return INTEGER OUTPUT) AS
BEGIN
  SET @a_return = @a_param\;
END;

CREATE PROCEDURE a_2_in_2_out(@param_one INTEGER, @param_two INTEGER, @return_one INTEGER OUTPUT, @return_two INTEGER OUTPUT) AS
BEGIN
  SET @return_one = @param_one\;
  SET @return_two = @param_two\;
END;

CREATE FUNCTION a_func_0_in() RETURNS INTEGER AS
BEGIN
  RETURN 10\;
END;

CREATE FUNCTION a_func_1_in(@a_param INTEGER) RETURNS INTEGER AS
BEGIN
  RETURN @a_param\;
END;

CREATE FUNCTION a_func_2_in(@param_one INTEGER, @param_two INTEGER) RETURNS INTEGER
BEGIN
  RETURN @param_one + @param_two\;
END;
