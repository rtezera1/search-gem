require "movie/search/version"
require 'pry'
require "simple-spreadsheet"

class Parse
  def initialize excel_path
    @excel_path = excel_path
  end

  def parse 
    movies = []
    spreadsheet = SimpleSpreadsheet::Workbook.read(@excel_path)
    spreadsheet.selected_sheet = spreadsheet.sheets.first
    spreadsheet.first_row.upto(spreadsheet.last_row) do |line|
      data1 = spreadsheet.cell(line, 1)
      movies << data1
    end
    return movies
  end
end
