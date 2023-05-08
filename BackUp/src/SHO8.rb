class SHO8
    def sho8
### 8-1 色々な例外を確認する
##typeError（データ型エラー）を発生させるプログラム
#1.to_s('2') 

##例外発生時のメッセージの読み方
#c:/WorkSpace/Ruby/VSCode/tempCodeRunnerFile.rb:　　　　　　　     ⇒　ファイル名（環境）
#1:　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　     ⇒　行数
#in `to_s':#no implicit conversion of String into Integer         ⇒　エラーメッセージ
# (TypeError)                                                     ⇒　例外の種類
#from c:/WorkSpace/Ruby/VSCode/tempCodeRunnerFile.rb:1:in `<main>'⇒　呼び出し元の箇所

##例外の種類
# SyntaxError   : Rubyの文法上のエラー
# NameError     : 変数やメソッドが存在しない
# NoMethodError : オブジェクトにメソッドが存在しない
# ArgumentError : メソッドの引数の数が一致しない
# TypeError     : メソッドの引数に指定されたオブジェクトのクラスが一致しない

### 8-2 発生した例外をつかまえる
##基本的な例外処理のプログラムを作成
#【begin 例外捕捉対象処理 rescue => 変数　例外発生時の処理　ensure 例外発生に関わらず実行する処理 end】
#【def メソッド 例外捕捉対象処理 rescue => 変数　例外発生時の処理　ensure 例外発生に関わらず実行する処理 end】
begin
    #p = 1
    #変数未定義により例外エラー発生
    p a
rescue => exception
    p 'This is rescue block'
    p exception
ensure
    p 'This is ensure block'
end

#例外の種類毎に捕捉する
begin
    #例外を捕捉する対象の処理
    pp = 1 
    p ppa
rescue NameError
    p 'NameError'
rescue SyntaxError
    p 'SyntaxError'
rescue NoMethodError
    p 'NoMethodError'
ensure
    p '例外を捕捉しました！'
end

### 8-3 例外を発生させよう
##rescue句で例外を再発生させるプログラムを保存する
#【raise 'エラーメッセージ'】
#【raise 例外の種類 'エラーメッセージ'】
begin
  # TypeError例外を発生
  raise TypeError, 'original error'
rescue => exception
  p exception.message
  # 例外処理後に例外を再発生
  raise
end

    end
end
sentense = SHO8.new
sentense.sho8