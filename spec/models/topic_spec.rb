require 'rails_helper'
RSpec.describe Topic, type: :model do
  before do
    @topic = FactoryBot.build(:topic)
  end

  describe 'HEADINGの保存' do

    context 'HEADINGが投稿できる場合' do

      it 'HEADINGタイトルを投稿できる' do
        expect(@topic).to be_valid
      end
      
    end

    context 'HEADINGが投稿できない場合' do

      it 'HEADINGタイトルが空では投稿できない' do
        @topic.title_name = ''
        @topic.valid?
        expect(@topic.errors.full_messages).to include("Title nameを入力してください")
      end

      it 'HEADINGタイトルが26文字以上だと投稿できない' do
        @topic.title_name = 'a' * 26
        @topic.valid?
        expect(@topic.errors.full_messages).to include("Title nameは25文字以内で入力してください")
      end

      it 'ユーザーが紐づいていなければ投稿できない' do
        @topic.user = nil
        @topic.valid?
        expect(@topic.errors.full_messages).to include("Userを入力してください")
      end

    end
  end

end
