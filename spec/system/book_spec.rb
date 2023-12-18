require 'rails_helper'

RSpec.describe "books", type: :system do
  it "GET /books" do
    visit "/books" # /booksへHTTPメソッドGETでアクセス
    expect(page).to have_text("Books") # 表示されたページに Books という文字があることを確認
  end
  it "POST /books" do
    visit "/books/new"
    fill_in "Title", with: "RubyBook"
    fill_in "Author", with: "Matz"
    click_button "Create Book"

    expect(page). to have_text("Book was successfully created.")
    expect(page). to have_text("Title: RubyBook")
    expect(page). to have_text("Author: Matz")
  end
end
# 最終行に空行
