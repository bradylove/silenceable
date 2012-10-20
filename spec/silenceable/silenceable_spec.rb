require 'spec_helper'

module Rails
  def self.root
    File.expand_path("../", __FILE__)
  end
end

describe Silenceable do
  let(:path) { Rails.root + "/../support/.silenced" }

  before :each do
    FileUtils.rm(path) if File.exists?(path)
  end

  it "should be a module" do
    Silenceable.class.should eq Module
  end

  context "#silenced?" do
    it "should be silenced if the .silence file exists" do
      FileUtils.touch(path)
      Silenceable.silenced?(path).should eq true
    end
  end

  context "Silenceable" do
    it "should yield" do
      expect { |b| Silenceable(&b) }.to yield_control
    end

    it "should not yield" do
      FileUtils.touch(path)
      Silenceable.stub(:silenced?).and_return(true)
      expect { |b| Silenceable(&b) }.not_to yield_control
    end
  end

  context "#silenceable" do
    it "should yield" do
      expect { |b| Silenceable.silenceable(&b) }.to yield_control
    end

    it "should not yield" do
      FileUtils.touch(path)
      Silenceable.stub(:silenced?).and_return(true)
      expect { |b| Silenceable.silenceable(&b) }.not_to yield_control
    end
  end
end
