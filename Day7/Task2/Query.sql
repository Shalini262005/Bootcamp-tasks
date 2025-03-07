use cell;

select Year,max(Cell_Phones),min(Cell_Phones),avg(Cell_Phones) from cell_phones_cleaned group by Year;