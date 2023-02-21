require 'rails_helper'

RSpec.describe Content, type: :model do
  before do
    @content = FactoryBot.build(:content)
  end

  describe 'コンテンツの保存' do

    context 'コンテンツが保存できる場合' do

      it 'タイトルとテキストと画像を保存できる' do
        expect(@content).to be_valid
      end

      it 'タイトルとテキストのみで投稿できる' do
        @content.image = nil
        expect(@content).to be_valid
      end

    end

    context 'ツイートが投稿できない場合' do

      it 'タイトルが空では投稿できない' do
        @content.title = ''
        @content.valid?
        expect(@content.errors.full_messages).to include("Titleを入力してください")
      end

      it 'タイトルが25文字以上では投稿できない' do
        @content.title = 'a' * 26
        @content.valid?
        expect(@content.errors.full_messages).to include("Titleは25文字以内で入力してください")
      end

      it 'テキストが空では投稿できない' do
        @content.text = ''
        @content.valid?
        expect(@content.errors.full_messages).to include("Textを入力してください")
      end

      it 'トピックスが紐付いていなければ投稿できない' do
        @content.topic = nil
        @content.valid?
        expect(@content.errors.full_messages).to include("Topicを入力してください")
      end

      it 'ユーザーが紐付いていなければ投稿できない' do
        @content.user = nil
        @content.valid?
        expect(@content.errors.full_messages).to include("Userを入力してください")
      end

    end
  end
end
