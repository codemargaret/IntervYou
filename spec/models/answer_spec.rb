require 'rails_helper'

describe Answer, 'association' do
  it { should belong_to :user }
  it { should belong_to :question }
end

describe Answer, 'column_specification' do
  it { should have_db_column(:text).of_type(:text) }
  it { should have_db_column(:question_id).of_type(:integer) }
  it { should have_db_column(:user_id).of_type(:integer) }
  it { should have_db_column(:created_at).of_type(:datetime) }
  it { should have_db_column(:updated_at).of_type(:datetime) }
end
