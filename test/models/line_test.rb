require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

describe "Line Model" do
  it 'can construct a new instance' do
    @line = Line.new
    refute_nil @line
  end
end
