#encoding: utf-8

require 'spec_helper'
	describe Fornecedor do
		it "válido com nome" do
			Fornecedor.new(nome: 'Apple').should be_valid
		end

		it "não é válido sem nome" do
			Fornecedor.new.should be_invalid
		end

		it "valida CPF" do
			Fornecedor.new(nome: 'Julio', cpf: '01368739105').should be_valid
			Fornecedor.new(nome: 'Julio', cpf: '1').should be_invalid
		end

		it "valida CNPJ" do
			Fornecedor.new(nome: 'Apple', cnpj: '00000000000191').should be_valid
			Fornecedor.new(nome: 'MS', cnpj: '1').should be_invalid
		end
	end