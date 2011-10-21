#encoding: utf-8

require "brcpfcnpj"

class Fornecedor < ActiveRecord::Base
		has_many :conformidades

		validates :nome, presence: true
		#valida a presença do cnpj somente se pj retorna true
		validates :cnpj, presence:true, if: :pj?
		validates :cpf, presence:true, unless: :pj?

		usar_como_cpf :cpf
		usar_como_cnpj :cnpj
		validate :cpf_ou_cnpj



		private
		def cpf_ou_cnpj
			if cpf.present? and cnpj.present?
				errors[:base] << "Use CPF ou CNPJ"
			end

			if cpf.blank? and cnpj.blank?
					errors[:base] << "Use ou CPF ou CNPJ"
			end
		end
end
