require 'spec_helper'
require 'easy_utils/testing/support/database_connection'

describe EasyUtils::Testing::Support::DatabaseConnection do

  describe '.establish_sqlite_connection' do

    let(:expected_connection ) { { adapter: 'sqlite3', database: :db_file_path } }

    before { expect(ActiveRecord::Base).to receive(:establish_connection).with(expected_connection).and_return true }

    subject { EasyUtils::Testing::Support::DatabaseConnection.establish_sqlite_connection :db_file_path }

    it { is_expected.to be_truthy }

  end

end