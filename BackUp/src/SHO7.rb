#class SHO7
    #def sho7

### 7-1 クラスとオブジェクトを理解する
#インスタンスとはクラスという設計図をもとに作成されたモノそのもの(オブジェクト)
#インスタンスのクラスを確認するclassメソッド

#クラスの名前が確認できる
p 1.class
p 1.08.class
p 'a'.class
p [1,2].class
p ({a: 1}.class)
p Time.now.class

### 7-2 クラスの書き方を学ぶ
##消費税額と税込み額を計算するクラスを定義する

#消費税額を計算するクラス
class TaxCalc
  #インスタンス生成する時の処理
  def initialize                #【initializeメソッド:initialize オブジェクト初期化】
    p 'calculator is starting'  #【補足：Objectクラスのprivateメソッド】
  end

  #消費税計算の実処理
  def execute(price,tax_rate)
    price * tax_rate
  end
end

#TaxCalcクラスのインスタンスを生成
calculator = TaxCalc.new
#executeメソッドの実行
p calculator.execute(100,0.08)
p calculator.class

### 7-3 クラスのメソッドの種類を学ぶ
class Kindofclasses
  #インスタンスメソッドを定義【クラスの外からでもアクセスできるメソッド】
  def call_public_method
    p 'publicメソッドが呼ばれました'
    call_private_method
  end

  #クラスメソッドを定義　　  【インスタンス経由ではなくクラス.メソッドで呼び出すことができる】
  def self.call_class_method
    p 'クラスメソッドが呼ばれました'
  end

  #プライベートメソッドを定義【クラスの中からしかアクセスできないメソッド】
  private
  def call_private_method
    p 'privateメソッドが呼ばれました'  
  end
end
# インスタンスメソッドを呼び出す
instance = Kindofclasses.new
instance.call_public_method
#クラスメソッドを呼び出す
#instance.call_class_method
Kindofclasses.call_class_method
#プライベートメソッドを呼び出す(エラーになる)
instance.call_private_method

### 7-4 クラスの変数を使う
##TaxCalcクラスをインスタンス変数を使って記述する【同一インスタンスのみ-変更前提】

#消費税額を計算するクラス
class TaxCalc
  #インスタンス変数を初期化
  def initialize(price,tax_rate)
    @price = price              #【個々のインスタンス単位に用意する変数：@で宣言】
    @tax_rate = tax_rate
  end
  #消費税計算の実処理
  def execute
    @price * @tax_rate
  end
end
#executeメソッドの実行
calculator = TaxCalc.new(100,0.08)
p calculator.execute


##TaxCalcクラスをクラス変数を使って書き換える【クラスと全インスタンス-変更前提】

#消費税額を計算するクラス
class TaxCalc
  #クラス変数を宣言
  @@tax_rate = 0.08             #【クラスとそのインスタンス全て使用可の変数：@@で宣言】
  p  @@tax_rate                 # クラス変数の為、表示される
  p  @price                     # インスタンス変数の為、表示されない
  #インスタンス変数を初期化
  def initialize(price)
    @price = price
  end
  #消費税計算の実処理
  def execute
    @price * @@tax_rate
  end
end
#executeメソッドの実行
calculator = TaxCalc.new(100)
p calculator.execute

##TaxCalcクラスを定数を使って書き換える【クラスの外からでも参照可能-変更されない前提】

#消費税額を計算するクラス
class TaxCalc
  #定数を宣言
  TAX_RATE = 0.08               #【クラスの外からでも参照可能な変数：@をつけずに宣言】 
  #インスタンス変数を初期化
  def initialize(price)
    @price = price
  end
  #消費税計算の実処理
  def execute
    @price * TAX_RATE
  end
end
#executeメソッドの実行
calculator = TaxCalc.new(100)
p calculator.execute
p TaxCalc::TAX_RATE            #外部から参照する場合、【クラス名::定数】で記述する

### 7-5 クラス内のデータを読み書きする
##インスタンス変数に外部からデータを指定する(変数の参照/設定をそれぞれ別で行う必要がある)
class MedicalExaminator
  #インスタンス変数heightを設定
  def heightget=(height)
    @height = height
  end
  #インスタンス変数heightを参照
  def height
    @height
  end
end
examinator = MedicalExaminator.new
examinator.heightget = 170
p examinator.height

##attr_accessorを使ったプログラムを保存する
class MedicalExaminator
  #インスタンス変数heightへのアクセスを可能に
  #【attr_accessorメソッド:attr_accessor :インスタンス変数 外部への公開可能（設定/参照のみ）】
  #【attr_readメソッド:attr_read :インスタンス変数 外部への公開可能（読み取り専用）】
  #【attr_writerメソッド:attr_writer :インスタンス変数 外部への公開可能（書き込み専用）】
  attr_accessor :height
end
examinator = MedicalExaminator.new
examinator.height = 170
p examinator.height

### 7-6 クラスを継承する
##元となるクラスを作成する
#sleepメソッドを持つAnimalクラスを定義
class Animal
  def initialize(type)
    @type = type
  end

  def sleep
    p "#{@type} is sleeping."
  end
end

#Animalクラスを継承したDogクラスを定義
class Dog < Animal
  def shake_tail
    p "#{@type} is shaking the tail."
  end
end
dog = Dog.new("Dog")
dog.sleep            #子クラスのインスタンスから親のsleepメソッドを呼び出す
dog.shake_tail       #子クラスのインスタンスから子のshake_tail メソッドを呼び出す

#  end
#end

#sentence = SHO7.new
#sentence.sho7