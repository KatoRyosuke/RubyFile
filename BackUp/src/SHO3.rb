class SHO3
  def sho3

   ### 3-1 配列で複数データをまとめる
   animals=['dog','cat','mouse']
   p animals
   animals[2]='human'       #変更
   p animals
   animals.delete('cat')    #削除【deleteメソッド:delete(削除要素)】
   p animals
   animals.insert(2,'bird') #追加【insertメソッド:insert(位置,追加要素)】
   p animals
   animals<<'snake'         #要素を配列の1番最後に追加
   p animals

   ### 3-2 ハッシュでデータに名前を付けてまとめる

   #ハッシュ定義
   man = { 'height' => 170,'weight' => 65 }
   p man
   p man['height']
   p man['weight']

   #ハッシュをキーシンボルで定義
   man = { :height => 150,:weight => 85 }
   p man
   p man[:height]
   p man[:weight]
   
   #シンボル省略形で定義
   man = { height: 140,weight: 95 }
   p man
   p man[:height]
   p man[:weight]
   
   #ハッシュにデータ追加
   child = { height: 110,weight: 20 }
   child[:age] = 7
   p child
   p child[:age]

   #ハッシュのデータ削除
   child.delete(:age)
   p child
   p child[:age]

  #ハッシュに要素を追加する【storeメソッド:store(追加シンボル,追加要素)】
   child.store(:age,7)   
   p child

   #シンボルとはプログラムで扱うデータに名前を付けること
   #存在しないキー名を指定した場合、nilが返却される。（nullと同様）

    ### 3-3 データのまとまりを効率的に書く(文字列)
    animals = %w(dog cat mouse) 
    p animals

    #大文字表記の場合は式の展開を行う
    a = %W(#{1 + 1} #{1 + 2}) 
    #データの種類まで表記
    p a
    #単純な画面表記（改行する）
    puts a

    #シンボル
    animals = %I(dog cat mouse) 
    p animals
    #大文字表記の場合は式の展開を行う
    b = %I(#{'a' + 'b'} #{'c' + 'd'}) 
    #データの種類まで表記
    p b
    #単純な画面表記（改行する） 
    puts b

  end
end

sentense=SHO3.new
sentense.sho3