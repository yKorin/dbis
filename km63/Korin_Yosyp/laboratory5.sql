-- LABORATORY WORK 5
-- BY Korin_Yosyp

CREATE or REPLACE FUNCTION get_vend_id(ID_P PRODUCRS.PROD_ID%TYPE)

RETURN VARCHAR2
AS
  ID_V VARCHAR2(10);
BEGIN
  SELECT PRODUCTS.VEND_ID 
  INTO ID_V 
  FROM PRODUCTS 
  WHERE PRODUCRS.PROD_ID = ID_P;
RETURN ID_V;
END get_vend_id;

SELECT get_vend_id("BR01") 
FROM PRODUCTS;

CREATE OR REPLACE PROCEDURE RENAME_(ID_P IN PRODUCTS.PROD_ID, NAME_P IN PRODUCTS.PROD_NAME, STR_TEXT OUT VARCHAR)

IN ;

CREATE OR REPLACE PROCEDURE INSERT_(O_N IN ORDERIREMS.ORDER_NUM, O_I IN ORDERIREMS.ORDER_ITEM, P_ID IN , STR_TEXT OUT VARCHAR);
