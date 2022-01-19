require 'rspec'

require_relative 'main.rb'

describe 'Scr' do

  it 'if the word ends with "cs"' do
    expect(endsWithCS("Organics")).to eq 256
  end
  it 'if the word not ends with "cs"' do
    expect(endsWithCS("Organic")).to eq'cinagrO'
  end
  it 'outputs the correct array of pockemons' do
    allow_any_instance_of(Kernel).to receive(:gets).and_return(1,'Pickachu', 'Yellow')
    expect(pokemonCounter()).to eq([{"name: Pickachu, color: Yellow "=>0}])
  end

  it 'outputs the correct array of pockemons' do
    allow_any_instance_of(Kernel).to receive(:gets).and_return(2, 'Pickachu', 'Yellow', 'Raichu', 'Black')
    expect(pokemonCounter()).to eq([{"name: Pickachu, color: Yellow "=>0}, {"name: Raichu, color: Black "=>1}])
  end

end
