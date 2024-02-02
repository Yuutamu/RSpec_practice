FactoryBot.define do
  factory :book do # :book はモデル名を全小文字にしてシンボルにしたもの
    title { "RubyBook" } # カラム title のデータとして "RubyBook" をつかう
    author { "Matz" } # カラム author のデータとして "matz" をつかう
  end

  # trait
  trait :with_variations do
    after(:create) do |book|
      book.variations.create!(kind: "paper book")
    end
  end
end

# memo: 記法に違和感がある。rubyではなくjsonの記法かな？
