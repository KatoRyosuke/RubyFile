class SHO5
    def sho5

### 5-1 好きな回数処理を繰り返す

#繰り返し【timesメソッド:数値.times do～end】
10.times do
   p 1
end

 #実行回数を表示　｜i｜の部分は0～数値-1まで表示
10.times do |i| 
   p i
end

#実行回数を表示　do～end省略型
10.times {|i| p i}

### 5-2 必要な分だけ処理を繰り返す
##繰り返し【eachメソッド:配列.each do～end |i|へ取得値を1件ずつ入れる】
[1,2,3].each do |i|
   p i
end

#上記の省略ver
[1,2,3].each {|i| p i}           


{ height: 170,weight: 60 }.each do |element|
   p element
end

#上記の省略ver
{ height: 170,weight: 60 }.each {|element| p element} 

#2つの要素を表示
{ height: 170,weight: 60 }.each do |key,value|
    p key
    p value
 end

### 5-3 条件に応じて処理を繰り返す
a=0
while(a <= 10) do
    p a
    a += 1
end

#無限ループ
a=0                   
while(a <= 10) do
    p a
    #【sleepメソッド:sleep 秒数間待機】
    sleep 1
end

#条件によって処理を抜ける【break 条件式】
a=0
while(true) do
    p a
    a += 1
    break if a > 9
end

#条件によって処理を抜ける【next 条件式 ※条件に合致するものは飛ばす】
a=0
while(a < 10) 
    a += 1
    next if a == 5
    p a
end

### 5-4 その他の繰り返し処理

#while式に対して条件式がtrueになるまで処理を繰り返す
a=0
until(a > 10) do
    p a
    a += 1
end

#繰り返す配列やハッシュを代入して繰り返し処理の中で利用する
for i in [1,2,3] do
    p i
end

#【uptoメソッド:開始値.upto(上限値) 1ずつ増】
0.upto(10) do |i|
    p i
end

#【downtoメソッド:開始値.downto(下限値) 1ずつ減】
10.downto(0) do |i|
    p i
end

#【stepメソッド:開始値.step(上限値,増分) 】
10.step(1,-2) do |i|
    p i
end

#【loopメソッド:無限ループの実行】
loop do       
    p 1
    sleep 1
end

### 5-5 複数の要素を処理する
##配列やハッシュなどのオブジェクトにはEnumerableモジュールによって便利なメソッドが提供されている
# Enumerableモジュールによって提供される代表的なメソッドの機能を確認する

#【mapメソッド:繰り返し可能obj.map do |格納変数| ～ end】
array = [1,2,3].map do |i|
    i * 2
end
p array

#【any?メソッド:繰り返し可能obj.any? trueがどれか1つ⇒true】
p [false,false,true].any?   
p [false,false,false].any?

#【selectメソッド:繰り返し可能obj.select do |格納変数| ～ end】
# 条件に一致するものだけを抽出
array = [1,2,3,4].select do |i|  
    i % 2 == 0
end
p array

    end
end


sentense = SHO5.new
sentense.sho5