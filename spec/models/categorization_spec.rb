require 'spec_helper'

describe Categorization do
  it { should have_valid(:entry_id).when(1,2,3) }
  it { should_not have_valid(:entry_id).when(nil,'') }
  it { should have_valid(:category_id).when(1,2,3) }
  it { should_not have_valid(:category_id).when(nil,'') }
end
