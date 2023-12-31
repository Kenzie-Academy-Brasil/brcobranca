# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Brcobranca::Retorno::Cnab240::Base do
  let(:arquivo) { File.join(File.dirname(__FILE__), '..', '..', '..', 'arquivos', nome_arquivo) }

  describe '#load_lines' do
    it 'retorna nil se o arquivo é nil' do
      expect(described_class.load_lines(nil)).to be_nil
    end

    context 'Sicoob' do
      subject { Brcobranca::Retorno::Cnab240::Sicoob }

      let(:nome_arquivo) { 'CNAB240SICOOB.RET' }

      it 'lê o arquivo pela classe do Sicoob' do
        expect(subject).to receive(:load_lines).with(arquivo, {})
        described_class.load_lines(arquivo)
      end
    end
  end
end
