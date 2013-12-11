class Cliente < ActiveRecord::Base
validates :Nome, :presence => { :message => 'nao pode ser nulo' }
validates :Nome, :format => { :with => /\A[a-zA-Z]+\z/, :message=>'tem que ter so letras' } 
validates :CPF, :presence => { :message => 'nao pode ser nulo' }
validates :CPF, :length => { :is => 11, :message=>'tem que ter 11 digitos' } 
validates :CPF, :format => { :with => /\A[+-]?\d+\Z/, :message=>'tem que ter so numeros' } 
validates :Telefone, :presence => { :message => 'nao pode ser nulo' }
validates :Telefone, :format => { :with => /\A[+-]?\d+\Z/, :message=>'tem que ter so numeros' } 
validates :Telefone, :length => { :is => 8, :message=>'tem que ter 8 digitos' } 
validates :Email, :presence => { :message => 'nao pode ser nulo' }
validates :Email, :format => { :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/, :message=>'Isso nao parece um email' } 
end
