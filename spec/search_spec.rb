require 'spec_helper'

describe Search do 
  it 'searches movies and provide the name and year released' do 
    titles = [
      'Titanic',
      'Training-day',
      'The-Matrix'
    ]

    search = Search.new titles

    expect(search.OMDBapi).to eq({'Titanic' => '1997', 'The Matrix' => '1999', 'Training Day' => '2001' })
  end

  it 'should throw an error if titles are not in array format' do 
    titles = 'titanic'
    search = Search.new titles
    expect{search.OMDBapi}.to raise_error.with_message('Make sure the arguement is in Array format.')
  end

  it 'should throw an error if the title doesnt exist' do 
    titles = ['robtltezera']
    search = Search.new titles
    expect{search.OMDBapi}.to raise_error('Movie not found!')
  end

  it 'should parse excel and provide the name and year released' do 
    excel_path = Dir.pwd + "/spec/movies.xls"
    parsed = Parse.new excel_path
    titles = parsed.parse
    search = Search.new titles
    expect(search.OMDBapi).to eq({"Titanic"=>"1997", "Training Day"=>"2001", "A Few Good Men"=>"1992", "Rounders"=>"1998", "The Godfather"=>"1972"})
  end
end
