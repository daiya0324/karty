require 'rails_helper'

RSpec.describe Record, type: :model do
  before do
    @record = FactoryBot.build(:record)
  end

  describe 'recordの保存' do
    context 'recordが投稿できる場合' do
      it 'すべての値が正しく入力されていれば保存できること' do
        expect(@record).to be_valid
      end
      it 'descriptionは空でも保存できること' do
        @record.description = ''
        expect(@record).to be_valid
      end
      it 'imageは空でも保存できること' do
        @record.image = nil
        expect(@record).to be_valid
      end
    end

    context 'recordが投稿できない場合' do
      it 'nameが空だと保存できないこと' do
        @record.name = ''
        @record.valid?
        expect(@record.errors.full_messages).to include("Name can't be blank")
      end
      it 'dayが空だと保存できないこと' do
        @record.day = ''
        @record.valid?
        expect(@record.errors.full_messages).to include("Day can't be blank")
      end
      it 'managerが空だと保存できないこと' do
        @record.manager = ''
        @record.valid?
        expect(@record.errors.full_messages).to include("Manager can't be blank")
      end
      it 'cut_idが空だと保存できないこと' do
        @record.cut_id = ''
        @record.valid?
        expect(@record.errors.full_messages).to include("Cut can't be blank")
      end
      it 'color_idが空だと保存できないこと' do
        @record.color_id = ''
        @record.valid?
        expect(@record.errors.full_messages).to include("Color can't be blank")
      end
      it 'parm_idが空だと保存できないこと' do
        @record.parm_id = ''
        @record.valid?
        expect(@record.errors.full_messages).to include("Parm can't be blank")
      end
      it 'treatment_idが空だと保存できないこと' do
        @record.treatment_id = ''
        @record.valid?
        expect(@record.errors.full_messages).to include("Treatment can't be blank")
      end
      it 'userが紐付いていないと保存できないこと' do
        @record.user = nil
        @record.valid?
        expect(@record.errors.full_messages).to include("User must exist")
      end
    end
  end
end