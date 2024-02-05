books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

=begin
Sort the array of hashes based on the year of publication of each book, earliest to latest

Input: array of hashes
Output: array of hashes

Process:
Use sort_by to access each hash element's publication year 
=end

sorted_books = books.sort_by do |book|
  book[:published]
end

p sorted_books