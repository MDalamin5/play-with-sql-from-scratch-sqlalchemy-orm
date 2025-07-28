-- Check which phone price is gater then 2 lack
-- SELECT model, price, rating FROM smartphones
-- where price > 200000

-- Remove this phone which price is gater then 200000
DELETE FROM smartphones
WHERE price > 200000

-- Remove this phone which camera is 150 pixel and its form samsung brand

-- SELECT model, primary_camera_rear FROM smartphones
-- WHERE primary_camera_rear > 100 and brand_name = "samsung"

DELETE FROM smartphones
WHERE primary_camera_rear > 100 and brand_name = "samsung"