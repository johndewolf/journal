require 'spec_helper'

describe Entry do
  let(:titles) {["Hello","Goodbye","The Sky is Falling"]}
  let(:contents) {["Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
                  "Pellentesque at congue ante, auctor varius felis. Praesent condimentum lectus ut nunc ultrices venenatis.",
                  "Praesent commodo mauris augue, sit amet viverra mauris varius vel."]}


  it { should have_valid(:title).when(*titles) }
  it { should have_valid(:content).when(*contents) }
end
