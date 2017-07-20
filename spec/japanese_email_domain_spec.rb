require "spec_helper"
require 'japanese_email_domain'

RSpec.describe JapaneseEmailDomain do

  describe 'validate' do
    let!(:email){ JapaneseEmailDomain::Validator.new(param) }

    context 'when blank email' do
      let(:param){ ' ' }
      it { expect(email.valid?).to eq false }
    end
    context 'when not has "@" email' do
      let(:param){ 'japanese.com' }
      it { expect(email.valid?).to eq false }
    end
    context 'when not has account part email' do
      let(:param){ '@docomo.ne.jp' }
      it { expect(email.valid?).to eq false }
    end
    context 'when correct docomo email' do
      let(:param){ 'japanese@docomo.ne.jp' }
      it { expect(email.valid?).to eq true }
    end
    context 'when correct au email' do
      let(:param){ 'japanese@ezweb.ne.jp' }
      it { expect(email.valid?).to eq true }
    end
    context 'when correct softbank email' do
      let(:param){ 'japanese@softbank.ne.jp' }
      it { expect(email.valid?).to eq true }
    end
    context 'when correct softbank iphone email' do
      let(:param){ 'japanese@i.softbank.jp' }
      it { expect(email.valid?).to eq true }
    end
  end
end
