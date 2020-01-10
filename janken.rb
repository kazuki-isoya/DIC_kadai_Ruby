class Player
  def hand
    # コンソールを入力待ち状態にし、プレイヤーがコンソールから打ち込んだ値を出力する処理のメソッドの処理をこの中に作成する
    puts "下の選択肢から数字を選んで入力して下さい"
    puts "グー:0 チョキ:1 パー:2"

    while true
      myhand = gets.to_i

      if myhand == 0
        break
      elsif myhand == 1
        break
      elsif  myhand == 2
        break
      else
        puts "0〜2の数字を入力してください"
      end
    end
    # puts "あなた: #{myhand}"
    return myhand
  end
end

class Enemy
  def hand
    # グー、チョキ、パーの値をランダムに出力するメソッドの処理をこの中に作成する
    enemyhand = rand(0..2)
    # puts "相手: #{enemyhand}"
    return enemyhand
  end
end

class Janken

  def pon(player_hand, enemy_hand)
    # プレイヤーが打ち込んだ値と、Enemyがランダムに出した値でじゃんけんをさせ、その結果をコンソール上に出力するメソッドをこの中に作成する
    # その際、あいこもしくはグー、チョキ、パー以外の値入力時には、もう一度ジャンケンをする
    # 相手がグー、チョキ、パーのうち、何を出したのかも表示させる

      call = enemy_hand
      case call
      when 0
        call = "グー"
        puts "相手の手は#{call}です。"
      when 1
        call = "チョキ"
        puts "相手の手は#{call}です。"
      when 2
        call = "パー"
        puts "相手の手は#{call}です。"
      else
        call = "降参"
        puts "参りました"
      end

      judge = (player_hand-enemy_hand+3)%3
      # pp judge

      if judge == 2
        return "あなたの勝ちです"

      elsif judge == 1
        return "あなたの負けです"

      elsif judge == 0
        return "あいこです"
      end

  end
end

player = Player.new
enemy = Enemy.new
janken = Janken.new

while true
  duel = janken.pon(player.hand, enemy.hand)
  puts duel
  if duel == "あなたの勝ちです"
    break
  elsif duel == "あなたの負けです"
    break
  elsif duel == "あいこです"
  end
end
# 下記の記述で、ジャンケンメソッドが起動される
# janken.pon(player.hand, enemy.hand)

# ここに書かれているRubyの記述はあくまでヒントとして用意された雛形なので、書かれている記述に従わずに実装したいという場合は、自分の好きに実装して構わない。課題要件を満たし、コードの品質が一定の水準にあると判定されればどのような実装でも合格になる。
