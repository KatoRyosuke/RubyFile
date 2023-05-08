class SHO9
    def sho9

### 9-1 モジュールの書き方を学ぼう
## SampleClassのインスタンスからincludeして使う

# モジュールの定義(先頭は大文字にすること)
module SampleModule
  def sample_method
    p 'call sample_method.'
  end
end
class SampleClass
  # モジュールの再利用
  include SampleModule
end
instance = SampleClass.new
instance.sample_method

## クラスからモジュールをextendして使う

# モジュールの定義(先頭は大文字にすること)
module SampleModule
    def sample_method
      p 'call sample_method.'
    end
  end
  class SampleClass
    # モジュールの再利用
    extend SampleModule
  end
  SampleClass.sample_method

### 9-2 標準ライブラリを使う
## dateライブラリを使うプログラムを保存する

#外部定義されたライブラリを読み込む
require 'date'
#Dateクラスのtodayメソッドより今日日付に関するデータを表示
today = Date.today
p today
p today.year

day_of_the_weeks = %w(日 月 火 水 木 金 土)
day_of_the_week = day_of_the_weeks[today.wday]

p today.strftime('%Y年%m月%d日') + day_of_the_week + '曜日'

## open-uriライブラリを使うプログラムを保存する

#外部定義されたライブラリを読み込む
require 'open-uri'
#open-uriクラスのURI.open(url)メソッドよりデータを表示
file = URI.open('http://www.google.co.jp')
#readメソッドでhtmlの内容を読み込む
p file.read

## jsonライブラリを使うプログラムを保存する

#外部定義されたライブラリを読み込む(先頭は大文字にすること)
require 'json'
json = '{"man": {"height":170,"weight":65}}'
# JSONモジュールのparse(配列テキスト)メソッドでJSONテキストをハッシュに変換
new_hash = JSON.parse(json)
p new_hash
p new_hash["man"]["height"]

### 9-3 ライブラリを活用

#外部定義されたライブラリを読み込む
require 'open-uri'
require 'json'

class FbShareCounter
  BASE_URL = ''
  #http://graph.facebook.com/?id=
  def initialize(target_url)
    @request_url = BASE_URL + target_url
  end

  def count
    response = URI.open(@request_url).read
    hash = JSON.parse(response)
    hash['share']['share_count']
  end
end

counter = FbShareCounter.new('http://www.facebook.com/people/%E6%A0%AA%E5%BC%8F%E4%BC%9A%E7%A4%BE%E3%82%A2%E3%82%A4%E3%83%8D%E3%83%83%E3%83%88/100057213800456/')
p counter.count

    end
end
sentense = SHO9.new
sentense.sho9