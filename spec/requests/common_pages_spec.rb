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
  
  describe "About Page" do
    before { visit about_path }
    let(:page_title) { 'About' }

    it_should_behave_like "all common pages"
    it { should have_selector 'h1', text: "So Why Farkle on Rails?" }
  end

  describe "Contact Page" do
    before { visit contact_path }
    let(:page_title) { 'Contact' }

    it_should_behave_like "all common pages"
    it { should have_selector 'h1', text: "How To Get In Contact With Me" }
  end

end
