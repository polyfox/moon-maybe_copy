require 'spec_helper'
require 'moon-safe_copy/load'

describe Object do
  context '#safe_dup' do
    it 'safely duplicates an object, ignoring freeze state' do
      # numbers are not normally dup-able, so this should touch the rescue branch
      expect(1.safe_dup).to eq(1)
      expect('Foobar'.safe_dup).to eq('Foobar')
      a = 'Foobar'.freeze.safe_dup
      expect(a).not_to be_frozen
    end
  end

  context '#safe_clone' do
    it 'safely copies an object, preserving its frozen state' do
      expect(1.safe_clone).to eq(1)
      expect('Foobar'.safe_clone).to eq('Foobar')
      a = 'Foobar'.freeze.safe_clone
      expect(a).to be_frozen
    end
  end
end
