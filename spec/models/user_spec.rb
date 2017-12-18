require 'rails_helper'

describe User, 'association' do
  it { should have_many :questions }
  it { should have_many :answers }
end

describe User, 'column_specification' do
  it { should have_db_column(:email).of_type(:string) }
  it { should have_db_column(:name).of_type(:string) }
  it { should have_db_column(:encrypted_password).of_type(:string) }
  it { should have_db_column(:sign_in_count).of_type(:integer) }
  it { should have_db_column(:created_at).of_type(:datetime) }
  it { should have_db_column(:updated_at).of_type(:datetime) }
end

# describe User do
#   it "sends an email when the user is created" do
#     user = FactoryBot.create(:user)
#     ActionMailer::Base.deliveries.last.to.should eq [user.email]
#   end
# end
