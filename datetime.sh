#!/bin/bash

datetime_today_year() { date +%Y; }
datetime_today_year_short() { date +%g; }
datetime_today_month() { date +%m; }
datetime_today_month_name() { date +%b; }
datetime_today_day() { date +%d; }

datetime_today_week() { date +%u; } # 0 = Monday
datetime_today_week_name() { date +%A; }
datetime_today_week_year() { date +%W; } # 0 = Monday

datetime_today_hour_12() { date +%I; }
datetime_today_hour_24() { date +%H; }
datetime_today_minute() { date +%M; }
datetime_today_second() { date +%S; }

datetime_today_timestamp() { date +%s; }

datetime_today_date_ymd() { date +%F; }
datetime_today_date_dmy() { date +%d-%m-%Y; }
datetime_today_date_mdy() { date +%m-%d-%Y; }

# datetime_today_year
# datetime_today_year_short
# datetime_today_month
# datetime_today_month_name
# datetime_today_day
# datetime_today_week
# datetime_today_week_name
# datetime_today_week_year
# datetime_today_hour_12
# datetime_today_hour_24
# datetime_today_minute
# datetime_today_second
# datetime_today_timestamp
# datetime_today_date_ymd
# datetime_today_date_dmy
# datetime_today_date_mdy
