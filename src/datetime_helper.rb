module DatetimeHelper
  # nil safeではないので、メソッドでラップする
  def date_format date, options = {}
    return unless date
    return if date == 0
    begin
      date = Date.parse date.to_s if date.kind_of?(Integer) || date.kind_of?(String)

      options[:format].present? ? date.strftime(options[:format]) : date.strftime('%y/%m/%d')
    rescue
      date
    end
  end
  alias df date_format

  def date_format_year_month date
    return unless date
    return if date == 0
    begin
      date = Date.parse (date.to_s + "01") if date.kind_of?(Integer) || date.kind_of?(String)

      date.strftime '%Y/%m'
    rescue
      date
    end
  end
  alias dfym date_format_year_month

  def datetime_format datetime
    return unless datetime
    datetime.strftime '%y/%m/%d %H:%M'
  end
  alias dtf datetime_format

  # 実在の日付に関係なくフォーマットする
  def force_date_format date
    # 8桁以外はフォーマットしない
    return date unless date.length.eql?(8)

    y = date.slice(0, 4)
    m = date.slice(4, 2)
    d = date.slice(6, 2)

    [y, m, d].join('/')
  end
  alias f_df force_date_format

  # 実在の日付に関係なくフォーマットする 月と日 版
  def force_date_format_month_day date
    # 4桁以外はフォーマットしない
    return date unless date.length.eql?(4)

    m = date.slice(0, 2)
    d = date.slice(2, 2)

    [m, d].join('/')
  end
  alias f_dfmd force_date_format_month_day

  # 実在の日付に関係なくフォーマットする(年が「9999」は除く)
  def force_date_format2 date
    # 8桁以外はフォーマットしない
    return date unless date.length.eql?(8)

    y = date.slice(0, 4)
    m = date.slice(4, 2)
    d = date.slice(6, 2)

    if y == '9999'
      return ''
    else
      return [y, m, d].join('/')
    end
  end
  alias f_df2 force_date_format2

end