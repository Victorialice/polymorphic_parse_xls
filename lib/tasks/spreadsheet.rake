task :spreadsheet => :environment do
  require "spreadsheet"
  book = Spreadsheet.open "/home/bob/workspace/rails/polymorphic_two/doc/products.xls"
  book.worksheets

  sheet1 = book.worksheet 0
  sheet2 = book.worksheet 1

  sheet1.each do |row|
    pro_name = row[0]
    Product.create(
      name: pro_name
    )
  end

  sheet2.each do |row|
    em_name = row[0]
    Employee.create(
      name: em_name
    )

  end
end
