require "test_helper"

class DatetimeFormattingHelperTest < ActionView::TestCase

  def setup
    @date = "October 12, 2018".to_date
    @datetime = DateTime.parse("2018-10-12 13:36:14") # rubocop:disable Rails/TimeZone
  end

  def test_cal_date
    assert_equal "Oct 12, 2018", cal_date(@date)
    assert_equal "None", cal_date(nil)
  end

  def test_cal_date_mailer
    assert_equal "Oct 12, 2018", cal_date_mailer(@date)
    assert_equal "Get in touch now", cal_date_mailer(nil)
  end

  def test_datetime_to_s
    assert_equal "2018-10-12T13:36:14+00:00", datetime_to_s(@datetime)
    assert_equal "None", datetime_to_s(nil)
  end

  def test_standard_date
    assert_equal "October 12, 2018", standard_date(@date)
    assert_equal "", standard_date(nil)
  end

  # def test_format_for_datepicker
  #   assert_equal "October 12, 2018", format_for_datepicker(@date)
  #   assert_equal "", format_for_datepicker(nil)
  # end

  # def test_format_for_datepicker
  #   assert_equal "October 12, 2018", format_for_datepicker(@date)
  #   assert_equal "", format_for_datepicker(nil)
  # end

  # def test_type_for_datepicker
  # end

  # def test_type_for_timepicker
  # end

  def test_short_date
    assert_equal "Fri, Oct 12", short_date(@date)
    assert_equal "-", short_date(nil)
  end

  def test_tiny_date
    assert_equal "Oct 12", tiny_date(@date)
    assert_equal "-", tiny_date(nil)
  end

  def test_just_time
    assert_equal "12:00AM", just_time(@date)
    assert_equal "", just_time(nil)
  end

  def test_datetime_no_year
    assert_equal "Oct 12 at 01:36 PM", datetime_no_year(@datetime)
    assert_equal "", datetime_no_year(nil)
  end

  def test_long_day_date
    assert_equal "Friday, October 12", long_day_date(@datetime)
    assert_equal "", long_day_date(nil)
  end

  def test_display_time_ago
    assert_nil display_time_ago(nil)

    travel_to(@datetime.beginning_of_week + 5.days) do
      assert_equal "less than a minute ago", display_time_ago(Time.current)
      assert_equal "in 5 minutes", display_time_ago(Time.current + 5.minutes)
      assert_equal "Yesterday at 08:00PM", display_time_ago(Time.current - 1.day)
      assert_equal "Tuesday at 08:00PM", display_time_ago(Time.current - 3.days)
      assert_equal "on Sep 12", display_time_ago(Time.current - 30.days)
      assert_equal "on Oct 12, 2015", display_time_ago(Time.current - 3.years)
    end
  end

  def test_display_date_ago
    assert_equal "", display_date_ago(nil)

    travel_to(@datetime.beginning_of_week + 5.days) do
      assert_equal "on Oct 29", display_date_ago(Time.current + 17.days)
      assert_equal "next Friday", display_date_ago(Time.current + 14.days)
      assert_equal "Sunday", display_date_ago(Time.current + 2.days)
      assert_equal "Tomorrow", display_date_ago(Time.current + 1.day)
      assert_equal "Today", display_date_ago(Time.current)
      assert_equal "Yesterday", display_date_ago(Time.current - 1.day)
      assert_equal "Tuesday", display_date_ago(Time.current - 3.days)
      assert_equal "on Apr 12", display_date_ago(Time.current - 6.months)
      assert_equal "on Oct 12, 2015", display_date_ago(Time.current - 3.years)
    end
  end

  def test_display_quick_datetime
    assert_nil display_quick_datetime(nil)

    travel_to(@datetime.beginning_of_week + 5.days) do
      assert_equal "Oct 12", display_quick_datetime(Time.current + 2.hours)
      assert_equal "07:40PM", display_quick_datetime(Time.current - 20.minutes)
      assert_equal "Sep 12", display_quick_datetime(Time.current - 30.days)
      assert_equal "Oct 12, 2015", display_quick_datetime(Time.current - 3.years)
    end
  end

  def test_display_posted_time
    travel_to(@datetime) do
      User.any_instance.stubs(:created_at).returns(Time.current)
      User.any_instance.stubs(:updated_at).returns(Time.current)
      user = User.new

      assert_equal "Posted less than a minute ago", display_posted_time(user)

      User.any_instance.stubs(:created_at).returns(Time.current - 3.days)
      assert_equal "Posted Tuesday at 09:36AM, updated 3 days later", display_posted_time(user)
    end
  end

  def test_time_from_in_words
    assert_equal "a minute later", time_from_in_words(@datetime, @datetime)
    assert_equal "1 hour later", time_from_in_words(@datetime - 1.hour, @datetime)
    assert_equal "1 day later", time_from_in_words(@datetime - 1.day, @datetime)
  end

  def test_time_length_in_words
    assert_equal "about 2 months", time_length_in_words(45.days)
    assert_equal "-", time_length_in_words(nil)
  end

end
