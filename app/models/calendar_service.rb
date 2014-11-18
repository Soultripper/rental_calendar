class CalendarService
  def self.dates_to_ical(dates)
    dates.to_a.sort! {|d| d.unique_date}.reverse!
    cal = Icalendar::Calendar.new
    cal.event do |e|
      e.dtstart     = Icalendar::Values::Date.new(dates.first.date)
      e.dtend       = Icalendar::Values::Date.new(dates.last.date)
      #e.summary     = "Meeting with the man."
      #e.description = "Have a long lunch meeting and decide nothing..."
      #e.ip_class    = "PRIVATE"
    end
  end
end
