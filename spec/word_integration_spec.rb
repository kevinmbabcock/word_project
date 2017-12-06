require("capybara/rspec")
require("./app")
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('adding a new word', {:type => :feature}) do
  it('creates a new page for the word submitted by user') do
    visit("/")
    fill_in("addWord", :with => "baseball")
    click_button("Submit")
    expect(page).to have_content("baseball")
  end
end

describe('adding a new definition', {:type => :feature}) do
  it('adds definition to that words page') do
    new_word = Word.new(:name => "baseball")
    new_word.save
    visit("/word/1")
    fill_in("addDefinition", :with => "best game ever")
    click_button("Submit")
    expect(page).to have_content("best game ever")
  end
end

describe('return to home page', {:type => :feature}) do
  it('take user back to home page') do
    new_word = Word.new(:name => "baseball")
    new_word.save
    visit("/word/1")
    click_link("Return")
    expect(page).to have_content("List of Words")
  end
end
