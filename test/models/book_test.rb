require 'test_helper'

class BookTest < ActiveSupport::TestCase

  setup do
    # Test用の画像ファイルをアップロードする
    upload_file = Rack::Test::UploadedFile.new(Rails.root.join("test/fixtures/files/test.jpg"))
    # アップロードファイルを複数画像対応用に@book_imagesに配列化
    @book_images = [upload_file]
  end

  test "Bookモデル登録検証" do
    assert_difference "Book.count", 1 do
      Book.create(title: "Rails不思議な世界", description: "Railsの不思議な世界を体験", images: @book_images)
    end
  end

  test "Bookモデルバリデーション検証" do
    book = Book.create(title: "", description: "Railsの不思議な世界を体験", images: @book_images)
    assert_empty book.title
    assert_equal "は入力しないでください", book.errors.messages[:description][0]
    assert_equal 2, book.errors.count
  end

  test "説明文が文字数100文字以上をエラーとする検証" do
    book = Book.create(title: "Railsの大冒険", description: "lllllllllOlllllllllOlllllllllOlllllllllOlllllllllOlllllllllOlllllllllOlllllllllOlllllllllOlllllllllOl", images: @book_images)
    assert_equal "は100文字以内で入力してください", book.errors.messages[:description][0]
    assert_equal 1, book.errors.count
  end

end
