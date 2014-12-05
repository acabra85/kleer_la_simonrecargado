require './lib/SimonRecargado'

describe SimonRecargado do
	
	before(:each) do
		@simon = SimonRecargado.new
	end

	it "Generar una lista de longitud 1 cuando envie el parametro 1" do
		@simon.generarLista("1").split(",").length.should == 1		
	end

	it "Generar una lista de longitud 4 cuando envie el parametro 4" do
		@simon.generarLista("4").split(",").length.should == 4
	end


	it "Generar una lista vacia cuando envie el parametro 0" do
		@simon.generarLista("0").split(",").length.should == 0 
	end

	it "Generar una lista vacia cuando envie el parametro erroneo" do
		@simon.generarLista("abc").split(",").length.should == 0 
	end

	it "Generar una lista vacia cuando no envie el parametro" do
		@simon.generarLista("").split(",").length.should == 0 
	end
end

