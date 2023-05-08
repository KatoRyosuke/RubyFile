class SHO1
  def sho1

### 1-1 Rubyとは
#JavaやCと異なりコンパイルが不要。
#中間コードへの変換不要なためそのまま実行できる

### 1-2 インストールの確認
#C:\Users\h46009001>ruby --version
#ruby 3.2.2 (2023-03-30 revision e51014f9c0) [x64-mingw-ucrt]
#上記が出ればインストール不要、内部コマンドとして認識されなければインストール必須

### 1-3 Rubyの実行
#ruby -e 'puts 1'        eオプションを使って実行
#irb > puts 1            irb上で実行
#ruby -ku ファイル名.rb  ファイル名を指定して実行

### 1-4 Rubyの文字コード
#ベースはUTF-8
#Windowsで扱うために実行時に-Kuオプションで回避する必要がある

  end
end

sentence = SHO1.new
sentence.sho1
