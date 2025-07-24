enum TransactionPeriodEnum {
  today,
  yesterday,
  thisWeek,
  lastWeek,
  thisMonth,
  lastMonth,
  thisYear,
  lastYear;

  String get header => switch (this) {
        today => "today",
        yesterday => "yesterday",
        thisWeek => "this_week",
        lastWeek => "last_week",
        thisMonth => "this_month",
        lastMonth => "last_month",
        thisYear => "this_year",
        lastYear => "last_year",
      };

  String get getTitle => switch(this){
    today => "Today",
    yesterday => "Yesterday",
    thisWeek => "This Week",
    lastWeek => "Last Week",
    thisMonth => "This Month",
    lastMonth => "Last Month",
    thisYear => "This Year",
    lastYear => "Last Year",
  };

}
