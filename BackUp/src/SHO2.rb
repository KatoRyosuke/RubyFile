class SHO2
  def sho2

### 2-1 文字列と文字列の展開
puts '#{1+1}'
p '#{1+1}'   
puts "#{1+1}"
p "#{1+1}"

### 2-2 数値と文字列
p 1
p '1'

### 2-3 データ型を確認するコマンド
  # ターミナルにてirbコマンドを打って確認

### 2-4 pメソッドとputsメソッドの違い
  # pメソッド：主にテスト用途で使用。データの種類がわかりやすい。
  # putsメソッド：主に画面に表示して改行する用途で使用。

### 2-5 データの種類
  # irb(main):008:0> 10.class
  # => Integer（整数値）
  # irb(main):009:0> 20.1.class
  # => Float（浮動小数点）
  # irb(main):010:0> 'matz'.class
  # => String（文字列）
  # irb(main):016:0> String.class
  # => Class（クラス）
  # irb(main):011:0> true.class
  # => TrueClass or FalseClass（真偽値）
  # irb(main):012:0> {}.class
  # => Hash（ハッシュ）
  # irb(main):013:0> [].class
  # => Array（配列）
  # irb(main):014:0> nil.class
  # => NilClass（ニル）

### 2-6 変数の定義

 ##実行成功
 a=10
 puts a

 ##未定義エラー
 #puts ab

 ##変数として使えないもの（先頭小文字半角英字推奨）
  #1,1a,1_a,その他日本語定義

  end
end

sentence = SHO2.new
sentence.sho2
