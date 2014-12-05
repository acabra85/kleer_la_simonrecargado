require './lib/SimonRecargado'

describe SimonRecargado do
	
	before(:each) do
		@simon = SimonRecargado.new
	end

	it "Generar una lista de longitud 1 cuando envie el parametro 1" do
		@simon.generarLista(1).split(",").length.should == 1		
	end

	it "Generar una lista de longitud 4 cuando envie el parametro 4" do
		@simon.generarLista(4).split(",").length.should == 4
	end
end

