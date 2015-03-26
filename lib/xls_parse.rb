require "movie/search/version"
require 'pry'
require "simple-spreadsheet"

class Parse
  def initialize excel_path
    @excel_path = excel_path
  end

  def parse 
    movies = []
    # use simple-spreadsheet to parse the excel and return an aray
    spreadsheet = SimpleSpreadsheet::Workbook.read(@excel_path)
    spreadsheet.selected_sheet = spreadsheet.sheets.first
    # loop through each row
    spreadsheet.first_row.upto(spreadsheet.last_row) do |line|
      data1 = spreadsheet.cell(line, 1)
      movies << data1
    end
    return movies
  end
end
