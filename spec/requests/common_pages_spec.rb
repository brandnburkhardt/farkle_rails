require 'spec_helper'

describe "CommonPages" do
  
  subject { page }

  shared_examples_for "all common pages" do
    it { should have_selector 'title', text: full_title(page_title) }
  end

  describe "Home Page" do
    before { visit root_path }
    let(:page_title) { '' }

    it_should_behave_like "all common pages"
    it { should_not have_selector 'title', text: " | Home" }
  end
  
end
