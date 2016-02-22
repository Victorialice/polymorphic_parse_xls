  require "spreadsheet"

class Product < ActiveRecord::Base
  #Spreadsheet.client_encoding = "UTF-8"

has_many :pictures, as: :imageable

    #book = Spreadsheet.open "/home/bob/workspace/rails/polymorphic_two/doc/products.xls"
    #book.worksheets

    #sheet1 = book.worksheet 0

    #sheet1.each do |row|
      #pro_name = row[0]

      #Product.create(
        #name: pro_name
      #)
    #end

end


