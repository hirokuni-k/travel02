def disp(plans)
  puts "旅行プランを選択して下さい。"
  plans.each.with_index(1) do |plan, i|
    puts "#{i}.#{plan[:place]} (#{plan[:price]}円)"
  end
end

def choose(plans)
  while true
    print "プランの番号を選択>"
    select_plans_num = gets.to_i
    break if (1..3).include?(select_plans_num)
    puts "1~3の番号を入力して下さい"
  end
  plans[select_plans_num - 1]
end

def determine_the_number_of_people(chosen_plan)
  puts "#{chosen_plan[:place]}ですね。"
  puts "何名で予約されますか？"
  while true
    print "人数を入力>"
    number_of_people = gets.to_i
    break if number_of_people >= 1
    puts "1名以上を入力して下さい"
  end
  number_of_people
end

def caluculate_charges(chosen_plan, number_of_people)
  puts "#{number_of_people}名ですね。"
  total_price = chosen_plan[:price] * number_of_people
  if number_of_people >= 5
    puts "5名以上なので10%割引となります"
    total_price *= 0.9
  end
  puts "合計金額は#{total_price.floor}円になります。"
end
