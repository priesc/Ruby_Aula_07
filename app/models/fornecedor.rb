require "brcpfcnpj"

class Fornecedor < ActiveRecord::Base
		validates :nome, presence: true
		usar_como_cpf :cpf
		usar_como_cnpj :cnpj
end
