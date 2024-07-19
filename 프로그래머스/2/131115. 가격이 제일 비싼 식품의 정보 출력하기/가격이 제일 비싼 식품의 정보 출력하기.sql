-- 코드를 입력하세요
# SELECT * FROM FOOD_PRODUCT WHERE PRICE = (SELECT MAX(PRICE) FROM FOOD_PRODUCT);

WITH MAX_P AS (
    SELECT MAX(PRICE) AS MAX_PRICE
    FROM FOOD_PRODUCT
)

SELECT PRODUCT_ID,	PRODUCT_NAME,	PRODUCT_CD,	CATEGORY,	PRICE
FROM FOOD_PRODUCT, MAX_P
WHERE PRICE = MAX_P.MAX_PRICE