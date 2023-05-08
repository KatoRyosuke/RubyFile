class SHO4
    def sho4
     ### 4-1 条件分岐の理解
     a=0
     if a == 5
        p 'aに1が代入されていたら実行される'
     elseif a == 2
        p 'aに2が代入されていたら実行される'
     else
        p 'aに1も2も代入されていなかったら実行される'
     end
+
     b=1
     unless b == 2
      p 'bに2が代入されていなかったら実行される'
     else
      p 'bに1が代入されていたら実行される'
     end

     ### 4-2 複数の条件で最適な処理を選ぶ
     a=3
     case a
     when 1
      p 'cに1が代入されていたら実行される'
     when 2
      p 'cに2が代入されていたら実行される'
     else
      p 'cに1も2代入されていなかったら実行される'
     end

     ### 4-3 条件分岐の特別な書き方を使う
     d=1
     if d > 0 && d < 10       #A && B [条件式Aがtrue AND 条件式Bがtrue]
      p 'dは0より大きく10未満'
     end

     e=1
     if e <= 2 || e >= 10       #A && B [条件式Aがtrue OR 条件式Bがtrue]
      p 'eは2以下、または10以上'
     end

     f=1
     if !(f < 0)                #A && B [条件式Aを反転(条件式Aの否定)]
      p 'fは0より小さくない'
     end
     
     #条件式演算子 [変数hが2より大きければ変数gに1を、そうでなければ変数gに5を代入する]
     g = 1
     h = 1
     g = h > 2?1:5
     p g

    end
  end
  
  sentense=SHO4.new
  sentense.sho4