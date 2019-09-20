/*Please add ; after each select statement*/
CREATE PROCEDURE mischievousNephews()
BEGIN
    SELECT 
        DATE_FORMAT(DATE_ADD(mischief_date, INTERVAL -1 DAY), '%w') weekday,
        mischief_date, 
        author, 
        title 
    FROM 
        mischief 
    ORDER BY 
        weekday ASC, 
        LENGTH( author ) ASC,
        author ASC,
        mischief_date ASC,
        title ASC;
        /*NLSSORT( title, 'NLS_SORT=BINARY' );*/
        /*LENGTH( title ) ASC, title DESC;*/
        /*title ASC, LENGTH( title ) ASC;*/
    /*SELECT title FROM mischief ORDER BY title ASC;*/
    /*SELECT DAYOFWEEK(mischief_date) weekday, mischief_date, author, title FROM mischief ORDER BY weekday ASC, title ASC;*/
END