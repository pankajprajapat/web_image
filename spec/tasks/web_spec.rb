require "rails_helper"

describe "web images rake task" do
  before do
    Rails.application.load_tasks
  end

  after do
    Rake.application.clear
  end

  it "List of images" do
    task = Rake::Task["web:images"].invoke('https://www.google.com')
  end
  
  it "Without URL rake task" do
    task = Rake::Task["web:images"].invoke
  end
end
