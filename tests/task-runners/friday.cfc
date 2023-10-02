component {
    function run() {
        var dayName = dayOfWeekAsString(dayOfWeek(now()));
        if ( dayName == "Friday") {
            error("Sorry no changes on Friday!")
        } else {
            print.greenLine("Ok, it is #dayName# - all good!");
        }
    }
}

