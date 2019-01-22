library(DBI)
con <- dbConnect(
  odbc::odbc(),
  driver = "PostgreSQL Unicode(x64)",
  Server = "192.168.99.177",
  Database = "pjp",
  UID = rstudioapi::askForPassword("User"),
  PWD = rstudioapi::askForPassword("Password!"),
  Port = 5432
)

