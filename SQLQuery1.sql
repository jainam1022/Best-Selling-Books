/*Top 5 authors with most number of selling book*/ 
Select Top 5 Author, COUNT (Volume_Sales) AS '# of Top Selling Book'
From Best_selling_books
Group By Author 
Order By [# of Top Selling Book] DESC

/*Top 5 authors with most number of sales*/ 
Select Top 5 Author, SUM (Volume_Sales) AS '# of Top Selling Book'
From Best_selling_books
Group By Author 
Order By [# of Top Selling Book] DESC

/*Top 5 Genres (Based on Total Books)*/ 
Select Top 5 Genre, COUNT (Volume_Sales) AS '# of Top Selling Book'
From Best_selling_books
Group By Genre 
Order By [# of Top Selling Book] DESC

/*Top 5 Genres (Based on Total Sales for a Book)*/ 
Select Top 5 Genre, SUM (Volume_Sales) AS '# of Top Selling Book'
From Best_selling_books
Group By Genre 
Order By [# of Top Selling Book] DESC

/*Top 5 Genre averages*/ 
Select TOP 5 Genre, AVG (Volume_Sales) AS 'Average for Each Publisher'
From Best_selling_books
Group By Genre 
Order By [Average for Each Publisher] DESC

/*Top 10 Book titles*/ 
Select TOP 10 Title, Volume_Sales AS '# of Top Selling Book', Publisher, Genre
From Best_selling_books
Order By [# of Top Selling Book] DESC

/*Top 5 publishers (Based on Number of Books)*/ 
Select Top 5 Publisher, COUNT (Volume_Sales) AS '# of Top Selling Book'
From Best_selling_books
Group By Publisher 
Order By [# of Top Selling Book] DESC

/*Top 5 publishers (Based on Total Number of Sales for a Book)*/ 
Select Top 5 Publisher, Sum (Volume_Sales) AS '# of Top Selling Book'
From Best_selling_books
Group By Publisher 
Order By [# of Top Selling Book] DESC

/*top 5 Publishers averages*/ 
Select Top 5 Publisher, AVG (Volume_Sales) AS 'Average for Each Publisher'
From Best_selling_books
Group By Publisher 
Order By [Average for Each Publisher] DESC

/*Number of books sold for each genre*/ 
Select  Genre, Sum (Volume_Sales) AS 'Total Books Per Genre'
From Best_selling_books
Group By Genre 
Order By [Total Books Per Genre] DESC

/*Average Books Sold*/ 
Select AVG(Volume_Sales) as "Average Number of Books Sold"
From Best_selling_books

/* total books sold more than average */ 
Select Title, Volume_Sales
From Best_selling_books
Where Volume_Sales > (Select AVG (Volume_Sales) From Best_selling_books)
Order By Volume_Sales DESC

