class Question
  def random_element
    questions = {"What is capital of India?\n1.mumbai 2.pune 3.chennai 4.delhi" => 4,"Which city is known as PinkCity?\n1.pune 2.mumbai 3.jaipur 4.delhi" => 3,"Which is the world's longest river? \n1.nile 2.ganga 3.yamuna 4.narmada" => 1,"Who is current President of India ?\n1.pratiba patil 2.ramnath kovind 3.narendra modi 4.ratan tata" => 2,"Who is the author of India's National Anthem?\n1.tulsidas 2.karamdas 3.ravindranath tagore 4.surdas" => 3,"Who is known as The Father of Computer\n1.linus torwals 2.richie bell 3.mark zuckerbeg 4.charles babbage" => 4,"Who is the owner of facebook\n1.linus torwals 2.mark zuckerbeg 3.richie bell 4.charles babbage" => 2,"How many states our country have\n1.29 2.38 3.24 4.20" => 1}
      puts key = questions.keys.sample
       {key: questions[key]}
      end
end
q=Question.new
puts "welcome to the quiz"
q.random_element
input=gets.chomp
if input == 'exit'
  then Process.exit(0)
elsif input == questions.value.sample
  puts "correct answer"
else
  puts "invalid choice"
end
