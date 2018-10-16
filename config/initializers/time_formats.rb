#
# Date and Time formats
#
{
  month_day_comma_year: "%Y-%m-%d",
  date_with_dashes: "%Y-%m-%d",
  short_date: "%x",
  simple: "%B %d, %Y",
  rfc822: "%a, %d %b %Y %H:%M:%S %z",
  month: "%B",
  invoice: "%y%m%d",
  abbreviated_month: "%b",
  day_of_month: "%d",
  month_year: "%m/%Y"
}.each do |k, v|
  Date::DATE_FORMATS[k] = v
  Time::DATE_FORMATS[k] = v
end

Date::DATE_FORMATS[:cal_date] = "%b %e, %Y"    # Nov 3, 2013
Date::DATE_FORMATS[:day_date] = "%a %b %d %Y"  # Sun 3 Nov 2013
Date::DATE_FORMATS[:short_date] = "%a, %b %e"  # Sun, Nov 3
Date::DATE_FORMATS[:tiny_date] = "%b %e"       # Sun, Nov 3
Date::DATE_FORMATS[:std_date] = "%B %-d, %Y" # December 2, 1903 => not December 02, 1903
Date::DATE_FORMATS[:long_day_date] = "%A, %B %e" # Sunday, November 3

#
# Time formats
#
Time::DATE_FORMATS[:date_time] = "%b %e, %Y"
Time::DATE_FORMATS[:time] = "%l:%M%p"
Time::DATE_FORMATS[:time_format] = "%I:%M %p"        # 2:22 pm
Time::DATE_FORMATS[:no_year] = "%b %e at %I:%M %p"   # Nov 3 at 2:22 pm

#
# DateTime formats
#
DateTime::DATE_FORMATS[:tiny_datetime] = "%b %e %Y at %I:%m %p" # Nov 3 at 2:22 pm

# Date
# ----------------------------
# Date::DATE_FORMATS[:default] = "%Y-%m-%d"     # 2013-11-03
# Date::DATE_FORMATS[:default] = "&proc"        # November 3rd, 2013
# Date::DATE_FORMATS[:default] = "%B %e, %Y"    # November 3, 2013
# Date::DATE_FORMATS[:default] = "%Y%m%d"       # 20131103
# Date::DATE_FORMATS[:default] = "%e %b"        # 3 Nov
# Date::DATE_FORMATS[:default] = ""             # custom

# DateTime
# ----------------------------
# DateTime::DATE_FORMATS[:default] = "%Y-%m-%d"  # 2013-11-03 14:22:18
# DateTime::DATE_FORMATS[:default] = "&proc"     # November 3rd, 2013 14:22
# DateTime::DATE_FORMATS[:default] = "%B %e, %Y" # November 3, 2013 14:22
# DateTime::DATE_FORMATS[:default] = "%e %b %Y"  # Sun, 3 Nov 2013 14:22:18 -0700
# DateTime::DATE_FORMATS[:default] = "%Y%m%d"    # 20131103142218
# DateTime::DATE_FORMATS[:default] = "%e %b"     # 3 Nov 14:22
# DateTime::DATE_FORMATS[:default] = ""          # custom

# Time
# ----------------------------
# Time::DATE_FORMATS[:default] = "%Y-%m-%d %H:%M:%S"         # 2013-11-03 14:22:18
# Time::DATE_FORMATS[:default] = "&proc"                     # November 3rd, 2013 14:22
# Time::DATE_FORMATS[:default] = "%B %d, %Y %H:%M"           # November 3, 2013 14:22
# Time::DATE_FORMATS[:default] = "%a, %d %b %Y %H:%M:%S %z"  # Sun, 3 Nov 2013 14:22:18 -0700
# Time::DATE_FORMATS[:default] = "%d %b %H:%M"               # 3 Nov 14:22
# Time::DATE_FORMATS[:default] = "%Y%m%d%H%M%S"              # 20131103142218
# Time::DATE_FORMATS[:default] = "%H:%M"                     # 14:22
# Time::DATE_FORMATS[:default] = ""                          # custom
