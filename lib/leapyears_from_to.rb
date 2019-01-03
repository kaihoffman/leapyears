def leapyears(year)
    if year % 400 == 0
        true
    elsif year % 100 == 0 && year % 400 != 0
        false
    elsif year % 4 == 0 && year % 100 != 0
        true
    else false
    end
end

def get_input
    puts "Please enter the year to start the search from"
    @start_year = gets.chomp.to_i
    puts "Please enter the year to search to"
    @end_year = gets.chomp.to_i
    if @start_year > @end_year
        puts "The starting year must be earlier than the end year, please try again"
        get_input
    end
end

def get_leap_years
    leap_years_set = []
    total_years_to_do = @end_year - @start_year
    total_years_to_do.times do
       if leapyears(@start_year) == true
           leap_years_set << @start_year
       end
       @start_year += 1
       end
    leap_years_set
end

get_input
get_leap_years