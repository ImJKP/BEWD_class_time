book_ratings = {
    "Stranger in a Strange Land" => 3,
    "2001: A Space Odyssey" => 5,
    "The Hitchhiker's Guide to the Galaxy" => 4,
    "War and Peace" => 5,
    "I, Robot" => 4
}

# puts book_ratings["I, Robot"]

books_by_author = {
    "Asimov, Isaac" => {
        "I, Robot" => 4,
        "Foundation" => 5,
        "Foundation and Empire" => 5
    },
    "Tolstoy, Leo" => {
        "War and Peace" => 4,
        "Anna Karenina" => 5,
        "The Death of Ivan Ilyich" => 4
    },
    "Adams, Douglas" => {
        "The Hitchhiker's Guide to the Galaxy" => 4
    },
    "Heinlein, Robert" => {
        "Stranger in a Strange Land" => 3
    },
    "Clarke, Arthur, C." => {
        "2001: A Space Odyssey" => 5
    }
}

# p books_by_author.keys
# p books_by_author["Tolstoy, Leo"].keys

jordan = {
    firstname: "Jordan",
    lastname: "Phillips",
    email: "jordankphillips@gmail.com"
}

# p jordan[:firstname]

start1 = Time.now
500.times do
  jordan = {
      firstname: "Jordan",
      lastname: "Phillips",
      email: "jordankphillips@gmail.com"
  }
  jordan.merge!({ :role => "student" })
  jordan
end

end1 = Time.now

p "Time to complete with merge! is #{end1-start1}"


start2 = Time.now
500.times do
  jordan = {
      firstname: "Jordan",
      lastname: "Phillips",
      email: "jordankphillips@gmail.com"
  }
  jordan = jordan.merge({ :role => "student" })
  jordan
end

end2 = Time.now

p "Time to complete with j=j is #{end2-start2}"
p (end2-start2)/(end1-start1)