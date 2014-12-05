Given(/^entro a la aplicacion$/) do
	visit '/'
end

Then(/^debo ver "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

Given(/^doy click en el boton "(.*?)"$/) do |name|
   click_button(name)
end

Then(/^debo ver una imagen$/) do
  last_response.should have_xpath("//img", :count => 1)
end


