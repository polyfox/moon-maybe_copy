require 'spec_helper'
require 'moon-maybe_copy/load'

describe Object do
  context '#maybe_dup' do
    it 'safely duplicates an object, ignoring freeze state' do
      # numbers are not normally dup-able, so this should touch the rescue branch
      expect(1.maybe_dup).to eq(1)
      expect('Foobar'.maybe_dup).to eq('Foobar')
      a = 'Foobar'.freeze.maybe_dup
      expect(a).not_to be_frozen
    end
  end

  context '#maybe_clone' do
    it 'safely copies an object, preserving its frozen state' do
      expect(1.maybe_clone).to eq(1)
      expect('Foobar'.maybe_clone).to eq('Foobar')
      a = 'Foobar'.freeze.maybe_clone
      expect(a).to be_frozen
    end
  end
end
