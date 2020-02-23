# How to find SQL Logins with common passwords

It is my job to check the SQL Server instance in order to find problems or points that are beyond the best practices that everyone is asking for but not implemented.

One of the things I check is instance security. One of the many tests I perform is to find SQL Logins that have a blank password and I wrote about it years ago in [this post](http://sqlschool.gr/blog/how-to-find-sql-logins-with-blank-password-1108.aspx) .

I have added many things in recent years as the requirements continue to grow and one of them is to check if SQL Logins have something in common as a password.

On the Internet you will find many such lists that you can use.

Personally I have made one of the most common ones I have on [github](https://github.com/antoniosch/DBA/tree/master/Common%2520Passwords) and you can freely use it as well if you want to get better.

How to use this is easy as long as you follow these steps:

-   Download the list from here, paste it into any folder in the SQL Server instance you want to check.
-   Run the following script after first changing the path to the BULK INSERT statement

The result may be a problem for you.
