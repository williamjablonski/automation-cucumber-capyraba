require 'capybara/cucumber'

Capybara.app_host = "https://www.santander.com.br/"
Capybara.default_driver =:selenium
Capybara.default_max_wait_time = 10
Capybara.ignore_hidden_elements = false

Given(/^I put the CEP as (\d+)$/) do |nu_CEP|
	begin
		visit('https://www.santander.com.br/br/busca-de-agencia')
		#fill_in 'refCep', :with => nu_CEP
  	end
end

Given(/^I click at Search button$/) do
	begin
  		find(:xpath, "//*[@id='BuscaAgenProximaForm']/ul[3]/li[2]/a").click
		find('#refEndereco').find(:xpath, 'option[2]').select_option
	end
end

Then(/^the data of agency is showed$/) do
  expect(page).to have_selector('#ResBuscaAgen', visible: true)
end