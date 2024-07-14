#!/bin/python

import calendar
import datetime

def next_months(year, month, count):
  months = []
  for i in range(count):
    months.append((year, month))
    month = (month%12) + 1
    if month == 1: year += 1
  return months

now = datetime.datetime.now()
cal = calendar.Calendar()
months = next_months(now.year, now.month, 3)
for month in months:
    for date in cal.itermonthdates(*month):
        print(date.strftime("%d%b@%a"))
