RSpec.describe Project, type: :model do
  context 'fields' do
    it { is_expected.to have_db_column(:name).of_type(:string) }
  end

  context 'relations' do
    it { is_expected.to have_many(:tasks).dependent(:destroy) }
  end
end
