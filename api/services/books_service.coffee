
module.exports =
  create_book: (book) ->
    criteria = { name: book.name }
    await Books.create_or_update criteria, book
    
