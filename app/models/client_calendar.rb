class ClientCalendar < ActiveRecord::Base

    def date
      Date.new(year, month, day)
    end



    def year
      string_date[0..3].to_i
    end

    def month
      string_date[4..5].to_i
    end

    def day
      string_date[6..7].to_i
    end

    def string_date
      unique_date.to_s
    end


end
