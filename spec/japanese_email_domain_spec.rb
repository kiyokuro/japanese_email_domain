require "spec_helper"
require 'japanese_email_domain'

RSpec.describe JapaneseEmailDomain do

  describe 'validate' do
    let!(:email){ JapaneseEmailDomain::Validator.new(param) }

    context 'when blank invalid' do
      let(:param){ ' ' }
      it { expect(email.valid?).to eq false }
    end
    context 'when not has @ invalid' do
      let(:param){ 'japanese.com' }
      it { expect(email.valid?).to eq false }
    end
    context 'when not has account part to invalid' do
      let(:param){ '@docomo.ne.jp' }
      it { expect(email.valid?).to eq false }
    end
    context 'when correct docomo email to vaild' do
      let(:param){ 'japanese@docomo.ne.jp' }
      it { expect(email.valid?).to eq true }
    end
    context 'when correct au email to vaild' do
      let(:param){ 'japanese@ezweb.ne.jp' }
      it { expect(email.valid?).to eq true }
    end
    context 'when correct softbank email to vaild' do
      let(:param){ 'japanese@softbank.ne.jp' }
      it { expect(email.valid?).to eq true }
    end
    context 'when correct softbank iphone email to vaild' do
      let(:param){ 'japanese@i.softbank.jp' }
      it { expect(email.valid?).to eq true }
    end
  end
end
