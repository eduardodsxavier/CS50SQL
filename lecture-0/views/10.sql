/*
In 10.sql, write a SQL query to answer a question of your choice
about the prints. The query should:
Make use of AS to rename a column
Involve at least one condition, using WHERE
Sort by at least one column, using ORDER BY
*/

SELECT english_title AS title FROM views WHERE artist = 'Hiroshige' ORDER BY print_number;
