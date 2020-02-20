SELECT round(AVG(price),2) AS 'Keskmine hind', count(stock_saldo) as Kogus,
CASE
	WHEN type='ebook' THEN "E-book"
    WHEN type='used' THEN "Used"
	WHEN type='new' THEN "New"
    ELSE "error"
END AS Tüüp
FROM d83345_books.books
GROUP BY type='e-book',type='new', type='used';
SELECT price
from books
WHERE type='new';



