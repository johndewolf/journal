require 'spec_helper'

describe Category do
  it { should have_valid(:name).when('Sports') }
  it { should_not have_valid(:name).when(nil, '') }

  it { should have_many(:categorizations) }
  it { should have_many(:entries).through(:categorizations) }
end
