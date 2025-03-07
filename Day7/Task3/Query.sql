use cell;

select c.country,c.Year,(sum(c.Cell_Phones)/sum(p.Population)) as Cellphones_per_person from cell_phones_cleaned c join pop_cleaned p on c.country=p.country and c.Year=p.Year group by country,Year