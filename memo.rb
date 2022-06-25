require "csv"
 puts "1(新規でメモを作成) 2(既存のメモ編集する)"
 
 memo_tyoe = gets.to_s
 select_number = memo_tyoe.chomp
 
 puts "拡張子を除いたファイル名を記入してください"
 file_name = gets.to_s
 file_name = file_name.chomp
 
 puts "メモしたい内容を記入してください"
 puts "完了したらCtrl+Dを押してください"
 input_value = $stdin.readlines
 
 if select_number =="1"
  CSV.open("#{file_name}.csv","w") do |csv|
   csv << input_value
  end
  
 elsif select_number == "2"
  CSV.open("#{file_name}.csv","a") do |csv|
   csv << input_value
  end
 end