class Person
end
Person.class_eval do
  def say_hello
    "Hello!"
  end
end
jimmy = Person.new
jimmy.say_hello