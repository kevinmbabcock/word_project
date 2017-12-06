# require("capybara/rspec")
# require("./app")
# Capybara.app = Sinatra::Application
# set(:show_exceptions, false)
#
# describe('adding a new word', {:type => :feature}) do
#   it('creates a new page for the word submitted by user') do
#     visit("/")
#     fill_in("addWord", :with => "baseball")
#     click_button("Submit")
#     expect(page).to have_content("baseball")
#   end
# end

# describe('adding a new definition', {:type => :feature}) do
#   it('adds definition to that words page') do
#     new_word = Word.new(:name => "baseball")
#     new_word.save
#     visit("/word")
#     click_link(new_word)
#   end
# end
