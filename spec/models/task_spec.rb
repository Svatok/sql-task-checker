RSpec.describe Task, type: :model do
  context 'fields' do
    it { is_expected.to have_db_column(:name).of_type(:string) }
    it { is_expected.to have_db_column(:status).of_type(:string) }
  end

  context 'relations' do
    it { is_expected.to belong_to(:project).optional }
  end
end
