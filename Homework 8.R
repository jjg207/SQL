library(DBI)
library(RSQLite)
tinyclothes_db <- dbConnect(SQLite(),
                        "./data/Tiny_Clothes")

# 1
dbGetQuery(tinyclothes_db,
           "select p.PROD_NO, p.Name, p.Color, ORDER_NO, QUANTITY
           from PRODUCT p
           inner join SALES_ORDER_LINE sol 
           on p.PROD_NO = sol.PROD_NO")

# 2 
dbExecute(tinyclothes_db, "pragma foreign_keys = on")

# Primary Keys 
dbGetQuery(tinyclothes_db, 
           "pragma table_info(customer)")
dbGetQuery(tinyclothes_db, 
           "pragma table_info(product)")
dbGetQuery(tinyclothes_db, 
           "pragma table_info(sales_order)")
dbGetQuery(tinyclothes_db, 
           "pragma table_info(sales_order_line)")

# Foreign Keys
dbGetQuery(tinyclothes_db,
           "pragma foreign_key_list(customer)")
dbGetQuery(tinyclothes_db,
           "pragma foreign_key_list(product)")
dbGetQuery(tinyclothes_db,
           "pragma foreign_key_list(sales_order)")
dbGetQuery(tinyclothes_db,
           "pragma foreign_key_list(sales_order_line)")


# 3
dbGetQuery(tinyclothes_db, 
           "select *
           from Employee
           where Age between 31 and 65")

# 4
dbGetQuery(tinyclothes_db,
           "select COUNT(*) as Number_of_Customers
           from Customer")

# 5
dbGetQuery(tinyclothes_db, 
           "select Address 
           from Customer
           where Address IS NULL")

# 6
dbGetQuery(tinyclothes_db, 
           "select Invoices.ORDER_NO, Product.PROD_NO, 
           Product.Name, Invoices.Quantity
           from Invoices
           inner join Product
           on Invoices.PROD_NO = Product.PROD_NO
           where Invoices.Quantity >= 10000")

# 7
dbGetQuery(tinyclothes_db,
           "select *
           from Employee
           order by Age DESC")

# 8
dbGetQuery(tinyclothes_db,
           "select Customer.Name as First_Name
           from Customer")

dbGetQuery(tinyclothes_db,
           "select Customer.Name as First Name
           from Customer")

# If you use First Name instead of First_Name
# the console returns a syntax error

dbDisconnect(tinyclothes_db)
