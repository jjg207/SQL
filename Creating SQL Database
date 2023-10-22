# Load following packages
library(DBI)
library(RSQLite)
library(sqldf)

# Creating my own database modeling the business 'Tiny Clothes' 

my_db <- dbConnect(RSQLite::SQLite(), "MYDB.sqlite")

(CUSTOMER <- read.csv("./data/CUSTOMER.txt"))
(DEPARTMENT <- read.csv("./data/DEPARTMENT.txt"))
(EMPLOYEE <- read.csv("./data/EMPLOYEE.txt"))
(EMPLOYEE_PHONE <- read.csv("./data/EMPLOYEE_PHONE.txt"))
(INVOICES <- read.csv("./data/INVOICES.txt"))
(PRODUCT <- read.csv("./data/PRODUCT.txt"))
(SALES_ORDER <- read.csv("./data/SALES_ORDER.txt"))
(SALES_ORDER_LINE <- read.csv("./data/SALES_ORDER_LINE.txt"))
(SOFT_TOYS_DATA <- read.csv("./data/SOFT_TOYS_DATA.txt"))
(STOCK_TOTAL <- read.csv("./data/STOCK_TOTAL.txt"))

dbWriteTable(my_db, "CUSTOMER", CUSTOMER)
dbWriteTable(my_db, "DEPARTMENT", DEPARTMENT)
dbWriteTable(my_db, "EMPLOYEE", EMPLOYEE)
dbWriteTable(my_db, "EMPLOYEE_PHONE", EMPLOYEE_PHONE)
dbWriteTable(my_db, "INVOICES", INVOICES)
dbWriteTable(my_db, "PRODUCT", PRODUCT)
dbWriteTable(my_db, "SALES_ORDER", SALES_ORDER)
dbWriteTable(my_db, "SALES_ORDER_LINE", SALES_ORDER_LINE)
dbWriteTable(my_db, "SOFT_TOYS_DATA", SOFT_TOYS_DATA)
dbWriteTable(my_db, "STOCK_TOTAL", STOCK_TOTAL)

# To open SQL connection to my database
my_db <- dbConnect(SQLite(),
                        "./MYDB.sqlite")

## 1
dbGetQuery(my_db, "select * from EMPLOYEE_PHONE")
dbGetQuery(my_db, "select * from INVOICES")
dbGetQuery(my_db, "select * from PRODUCT")
dbGetQuery(my_db, "select * from SALES_ORDER")
dbGetQuery(my_db, "select * from SALES_ORDER_LINE")
dbGetQuery(my_db, "select * from STOCK_TOTAL")

## 2
dbGetQuery(my_db, "select EMP_NO, AGE from EMPLOYEE 
           where AGE < 50")

## 3
dbGetQuery(my_db, "select NAME from EMPLOYEE")

## 4
dbGetQuery(my_db, "select DISTINCT NAME from EMPLOYEE")

## 5
dbGetQuery(my_db, "select NAME from EMPLOYEE 
           where NAME like ('B%') ")

## 6
dbGetQuery(my_db, "select AGE, NAME from EMPLOYEE 
           where NAME like ('%R%') ")

## 7
dbGetQuery(my_db, "select NAME, NI_NO from EMPLOYEE")

## 8
dbGetQuery(my_db, "select * from EMPLOYEE 
           where AGE between 31 and 65")


# To close SQL connection to my database
dbDisconnect(my_db)

