SELECT abs(price - 100000) as "temp" FROM smartphones

-- Round this ppi values up to 3 decimal places.
SELECT model, round(SQRT(resolution_width*resolution_width + resolution_height*resolution_height)/screen_size, 3) AS ppi FROM smartphones;

-- apply ceil in the screen size
SELECT CEiL(processor_speed) as "cell_processor_speed" FROM smartphones