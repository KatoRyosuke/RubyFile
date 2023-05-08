class SHO6
    def sho6

### 6-1 メソッドへの理解を深めよう
ret = 1.to_s(5)    #引数のあるメソッド
p ret              #【to_saメソッド:値obj.to_sa(引数) 値オブジェクトを文字列にして返す】

ret = 'test'.size  #引数のないメソッド
p ret              #【sizeメソッド:文字列.obj.to_sa(引数) 文字列オブジェクトの大きさを返す】

ret = p(1)         #
p ret              #動作：引数表示して改行/戻り値：表示した値

ret = puts(1)      #戻り値の無いメソッドを実行するプログラム
p ret              #動作：引数表示して改行/戻り値：nil

ret = print(1)     #戻り値の無いメソッドを実行するプログラム
p ret              #動作：引数表示して改行しない/戻り値：nil

### 6-2 メソッドの分類について学ぶ

#<関数型メソッド-pメソッドやsleepメソッドのようにオブジェクトからドットで繋ぐ必要がない>
p 'test'
sleep 1

#<インスタンスメソッド-to_saメソッドやsizeメソッドのように数値・文字列オブジェクトから
#ドットで繋げて呼び出す必要がある>

# 【splitメソッド：元の文字列.split(区切り文字) ⇒ 新しい配列を返す】
p '1,2,3'.split(',')
# 【joinメソッド：元の配列.join(区切り文字) ⇒ 新しい文字列を返す】
p [1,2,3].join(' ')

#<クラスメソッド-インスタンスカテゴリー、雛形であるクラスにドットで繋げて呼び出す必要がある>
p Time.now

### 6-3 メソッドを自作する（def メソッド名(引数1,引数2,...) ～end）

#baseは下辺、heightは高さを表す変数
def calc_triangle_area(base,height)
  base * height / 2
end
p calc_triangle_area(10,5)
#引数の変数が呼び出し側と呼び出される側が同じでなくても良い 
mybase = 12         
myheight = 3
p calc_triangle_area(mybase,myheight)
#関数を定義する前にメソッドを呼び出す（エラー）
p calc_triangle_area(10,5)
def calc_triangle_area(base,height)
    base * height / 2
end

### 6-4 特殊な引数の処理を定義する
def calc_tax(price,tax_rate = 0.08)
 tax = (price * tax_rate).to_i  #【to_iメソッド:数値オブジェクト.to_i 計算結果を整数に変換】
 tax_included = price + tax
 {tax: tax, tax_included:tax_included}
end
p calc_tax(100,0.1)
#第2引数を省略すると関数部分の仮引数が有効になる
p calc_tax(100)

#消費税率をハッシュ形式に書き換える
def calc_tax(price,tax_rate: 0.08)
    tax = (price * tax_rate).to_i
    tax_included = price + tax
    {tax: tax, tax_included:tax_included}
end
p calc_tax(100,tax_rate: 0.1)
p calc_tax(100)

#引数を全て渡すメソッドを定義する
def calc_tax(*v)
    price = v[0]
    tax_rate = v[1]
    tax = (price * tax_rate).to_i
    tax_included = price + tax
    {tax: tax, tax_included:tax_included}
end
p calc_tax(100,0.08)

 end
end

sentence = SHO6.new
sentence.sho6  