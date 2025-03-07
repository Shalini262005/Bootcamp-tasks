use cell;

SELECT Year, Country
FROM (
    SELECT Year, Country, Cell_Phones, 
           RANK() OVER (PARTITION BY Year ORDER BY Cell_Phones DESC) AS rnk
    FROM cell_phones_cleaned
) ranked
WHERE rnk = 1;
