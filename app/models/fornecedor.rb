#encoding: utf-8

require "brcpfcnpj"

class Fornecedor < ActiveRecord::Base
		validates :nome, presence: true
		usar_como_cpf :cpf
		usar_como_cnpj :cnpj
		validate :cpf_ou_cnpj

		private
		def cpf_e_cnpj
			if cpf.present? and cnpj.present?
				errors[:base] << "Use CPF ou CNPJ"
			end

			if cpf.blank? and cnpj.blank?
					errors[:base] << "Use ou CPF ou CNPJ"
			end
		end
end
