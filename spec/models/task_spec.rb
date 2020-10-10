require 'rails_helper'

RSpec.describe Task, type: :model do
  describe 'validation' do
    let(:task) { build(:task, title: title) }
    subject { task.valid? }

    context 'タイトルが空の場合' do
      let(:title) { nil }
      it { is_expected.to be_falsey }
    end

    context 'タイトルが入力されている場合' do
      let(:title) { 'タイトル' }
      it { is_expected.to be_truthy }
    end
  end
end