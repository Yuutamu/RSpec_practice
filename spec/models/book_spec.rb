require 'rails_helper' # 設定ファイルrails_helper.rbを読み込むコードが全テストにある

RSpec.describe Book, type: :model do # Bookモデルのテストコード
  describe "Book#title_with_author" do
    context "Book#titleが文字列のとき" do
      before do
        @book = Book.new(title: :RubyBook, author: :Matz)
      end
      it "title - author の文字列が返されること" do
        expect(@book.title_with_author).to eq("RubyBook - Matz")
      end
    end
    context "Book#titleがnilのとき" do
      it "空のtitle - author の文字列が返されること" do
        book = Book.new(author: "Matz")
        expect(book.title_with_author).to eq(" - Matz")
      end
    end
  end
end
