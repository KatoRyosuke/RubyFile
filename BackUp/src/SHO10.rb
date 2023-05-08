class SHO10
    def sho10

### 10-1 ファイルを操作する
file_path = 'text.txt'
#テキストファイルに書き込み
open(file_path,'w') do |f|
    f.puts('Hello,World!')
end
#テキストファイルに書き込み(追記)
open(file_path,'a') do |f|
    f.puts('Hello,World!!')
end
#テキストファイルからの読み込み
open(file_path,'r') do |f|
    p f.read
end

### 10-2 正規表現で文字列を置き換える
## 正規表現に一致する単語を取り出すプログラム
words = %w(after all air and animal answer around)
#【文字列のマッチング位置取得：/正規表現/=~文字列】
p words.select{|word| /^a.*r$/ =~ word}

## 正規表現に一致する数値を取り出すプログラム
tel = '090123456789'
#【matchメソッド:match(/(正規表現1)(正規表現2)(正規表現3)/)】
data = tel.match(/(\d{3})(\d{4})(\d{5})/)
p data[0]
p data[1]
p data[2]
p data[3]

## 正規表現に一致する文字を書き換えるプログラム
tel = '090-1234-5678'
#【subメソッド:sub(/検索する正規表現/,置換用文字列)】最初
p tel.sub(/-/,'')
#【gsubメソッド:gsub(/検索する正規表現/,置換用文字列)】文字全体
p tel.gsub(/-/,'')


## 正規表現の種類
# ^ ...次の文字が行頭　[記述例:/^a/]
# $ ...前の文字が行末　[記述例:/r$/]
# . ...改行を除く1文字 [記述例:/a./]
# * ...直前の文字が0回以上繰り返す文字列 [記述例:/^a.*/]
# + ...直前の文字が1回以上繰り返す文字列 [記述例:/a+/]
# {回数} ...直前の文字が「回数」分繰り返す文字列 [記述例:/a{3}/]
# {\w} ...半角英数字1文字 [記述例:/\w+/] (マッチ例：pen1)
# {\d} ...半角数字1文字   [記述例:/\d+/] (マッチ例：1234)
# (正規表現) ...括弧で囲まれた正規表現に一致する文字列を後で取り出す [記述例:/\d{3}/] (マッチ例：090)
# \ ...正規表現で特別な意味を持つ記号を文字列として扱う [記述例:/\.$/] (マッチ例：.)

### 10-3 ファイルを置き換える

# データを書き換えるクラス
class DataReplacement
  attr_writer  :inputfile, :outputfile
  # データを読み込むための処理
  def replace
    output = File.read(@inputfile).split("\n").map do |content|
        name,sex_code,tel = content.split(',')
        last_name,first_name = name.split(' ')
        [last_name,first_name,sex(sex_code),separete_tel(tel)].join(',')
        end.join("\n")
        File.write(@outputfile,output)
  end

  private
  # 性別コードを文字列に変換
  def sex(code)
    code.to_i == 1 ? '男性' : '女性'
  end

  # 携帯電話番号をハイフン区切りに変換
  def separete_tel(number)
    number.match(/(\d{3})(\d{4})(\d{4})/)
    "#{$1}-#{$2}-#{$3}"
  end

end

replacement = DataReplacement.new
# 入力ファイルの指定
replacement.inputfile = ARGV[0]
# 出力ファイルの指定
replacement.outputfile = ARGV[1]
# データ書き換え
replacement.replace

    end
end
sentense = SHO10.new
sentense.sho10