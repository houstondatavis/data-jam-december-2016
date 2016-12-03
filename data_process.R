library(ggmap)

crime_file_strings <- read.csv("~/Documents/RStudioGit/DataJam-Dec2016/crime_file.csv", stringsAsFactors=FALSE)
geocode("someplace, nyc")

addresses <- crime_file_strings$Address_Range
t <- addresses[1]

geocode(t)

substring(t, 1 + indexOf("-", t))
geocode()


times <- crime_file_strings$Full_time
x <- times[1]

strptime(x, "%y-%m-%d %H:%M:%S")

crime_file_strings$Time_converted <- as.POSIXlt(crime_file_strings$Time_Begun / 1000, origin="1970-01-01")

monthAbb <- months(crime_file_strings$Time_converted, abbreviate = TRUE)

crime_file_strings$Month_num <- match(monthAbb,month.abb)

?month.abb

strptime()
