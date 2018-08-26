library(RMySQL)
library(dplyr)
library(tidyr)
user <- "analytics"
pwd <- "yqmEdnyUJrp9UUxNKCmQJUHy"
db <- "greenlight"
host <- "greenlight.cluster-c2krgz5jvib9.us-east-1.rds.amazonaws.com"

my_db <- dbConnect(MySQL(), 
                   user = user,
                   password = pwd,
                   dbname = db,
                   host = host)

sql <- paste0("select * from activity")
rs <- dbSendQuery(my_db, sql)
activity <- dbFetch(rs, n = -1)

sql <- paste0("select * from contract")
rs <- dbSendQuery(my_db, sql)
contract <- dbFetch(rs, n = -1)

sql <- paste0("select * from contract_template")
rs <- dbSendQuery(my_db, sql)
contract_template <- dbFetch(rs, n = -1)

sql <- paste0("select * from office")
rs <- dbSendQuery(my_db, sql)
office <- dbFetch(rs, n = -1)

sql <- paste0("select * from greenlight.option")
rs <- dbSendQuery(my_db, sql)
option <- dbFetch(rs, n = -1)

sql <- paste0("select * from org")
rs <- dbSendQuery(my_db, sql)
org <- dbFetch(rs, n = -1)

sql <- paste0("select * from patient")
rs <- dbSendQuery(my_db, sql)
patient <- dbFetch(rs, n = -1)

sql <- paste0("select * from patient_party")
rs <- dbSendQuery(my_db, sql)
patient_party <- dbFetch(rs, n = -1)

sql <- paste0("select * from patient_type")
rs <- dbSendQuery(my_db, sql)
patient_type <- dbFetch(rs, n = -1)

sql <- paste0("select * from practice")
rs <- dbSendQuery(my_db, sql)
practice <- dbFetch(rs, n = -1)

sql <- paste0("select * from presentation")
rs <- dbSendQuery(my_db, sql)
presentation <- dbFetch(rs, n = -1)

sql <- paste0("select * from proc")
rs <- dbSendQuery(my_db, sql)
proc <- dbFetch(rs, n = -1)

sql <- paste0("select p.*, t.type from proc_template p left join proc_template_type t ON p.type_id = t.id")
rs <- dbSendQuery(my_db, sql)
proc_template <- dbFetch(rs, n = -1)

sql <- paste0("select * from proc_phase")
rs <- dbSendQuery(my_db, sql)
proc_phase <- dbFetch(rs, n = -1)

sql <- paste0("select * from referral_source")
rs <- dbSendQuery(my_db, sql)
referral_source <- dbFetch(rs, n = -1)

sql <- paste0("select * from status_code")
rs <- dbSendQuery(my_db, sql)
status_code <- dbFetch(rs, n = -1)

sql <- paste0("select * from status_date")
rs <- dbSendQuery(my_db, sql)
status_date <- dbFetch(rs, n = -1)

sql <- paste0("select * from user")
rs <- dbSendQuery(my_db, sql)
user <- dbFetch(rs, n = -1)