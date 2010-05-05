require File.join(File.dirname(__FILE__), 'spec_helper.rb')

describe "A manifest with the Heartbeat plugin" do

  before do
    @manifest = HeartbeatManifest.new
    @manifest.heartbeat
  end

  it "should be executable" do
    @manifest.should be_executable
  end

  it "should include the heartbeat package" do
    @manifest.packages.keys.should include 'heartbeat'
  end

  it "should include the trio of required heartbeat config files"
    @manifest.files.keys.should include '/etc/ha.d/haresources'
    @manifest.files.keys.should include '/etc/ha.d/authkeys'
    @manifest.files.keys.should include '/etc/ha.d/ha.cf'
  end

end