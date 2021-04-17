# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = Category.all
kinds = Kind.all

#Rgeistro de categorías
5.times do |i|
  title = Faker::Nation.capital_city + (i + 1).to_s
  is_public = [true, false].sample
  Seed = Category.create!(title: title, is_public: is_public)
  
  5.times do |k|
      title = Faker::Nation.capital_city(k + 1).to_s
      is_public = [true, false].sample
      category_id = Seed.id
      Category.create!(title: title, is_public: is_public, category_id: category_id)
  end
end

#Registro de kind
10.times do |i|
  title = Faker::Commerce.department + (i + 1).to_s
  Kind.create!(title: title)
end

#Registros de Bookmarkers
20.times do |i|
  title = Faker::Nation.capital_city + (i + 1).to_s
  url = Faker::Internet.url
  Bookmark.create!(title: title, url: url)
end

# Otra manera de registrar 
Type.destroy_all
Category.destroy_all
Bookmark.destroy_all

Type.create(
    [
        { name: "Anime" },
        { name: "Manga" }
    ]
)
Category.create(
    [
        { name: "Shonen", is_public: true },
        { name: "Isekai", is_public: true }
    ]
)
Category.create(
    [
        { name: "Escolar", private: false, category_id: Category.find_by(name: "Shonen").id },
        { name: "Magia", private: false, category_id: Category.find_by(name: "Isekai").id }
    ]
)
Bookmark.create(
    [
        { title: "One piece", url:"https://www3.animeflv.net/anime/one-piece-tv", type_id: Type.find_by(name: "Anime").id, category_id: Category.find_by(name: "Shonen").id },
        { title: "Boku no Hero Academia", url: "https://www3.animeflv.net/anime/boku-no-hero-academia-2016", type_id: Type.find_by(name: "Anime").id, category_id: Category.find_by(name: "Escolar").id },
        { title: "One piece", url:"https://www3.animeflv.net/anime/one-piece-tv", type_id: Type.find_by(name: "Anime").id, category_id: Category.find_by(name: "Shonen").id },
        { title: "Konosuba", url: "https://www3.animeflv.net/anime/kono-subarashii-sekai-ni-shukufuku-wo",type_id: Type.find_by(name: "Anime").id, category_id: Category.find_by(name: "Isekai").id },
        { title: "Solo leveling", url: "https://lectortmo.com/library/manhwa/41512/solo-leveling",type_id: Type.find_by(name: "Manga").id, category_id: Category.find_by(name: "Shonen").id },
        { title: "Spy x Family", url: "https://lectortmo.com/library/manga/43882/spy-x-family",type_id: Type.find_by(name: "Manga").id, category_id: Category.find_by(name: "Escolar").id },
        { title: "Owari no Seraph", url: "https://lectortmo.com/library/manga/8190/Owari-no-Seraph",type_id: Type.find_by(name: "Manga").id, category_id: Category.find_by(name: "Shonen").id },
        { title: "Jujutsu Kaisen", url: "https://www3.animeflv.net/anime/jujutsu-kaisen-tv",type_id: Type.find_by(name: "Anime").id, category_id: Category.find_by(name: "Shonen").id },
        { title: "Jujutsu Kaisen", url: "https://lectortmo.com/library/manga/36989/jujutsu-kaisen",type_id: Type.find_by(name: "Manga").id, category_id: Category.find_by(name: "Shonen").id },
        { title: "Junk the Black Shadow", url: "https://lectortmo.com/library/manga/37907/Junk-the-Black-Shadow",type_id: Type.find_by(name: "Manga").id, category_id: Category.find_by(name: "Magia").id },
        { title: "Log Horizon", url: "https://www3.animeflv.net/anime/log-horizon",type_id: Type.find_by(name: "Anime").id, category_id: Category.find_by(name: "Isekai").id },
        { title: "Vinland Saga", url: "https://www3.animeflv.net/anime/vinland-saga",type_id: Type.find_by(name: "Anime").id, category_id: Category.find_by(name: "Shonen").id },
        { title: "Fate Stay Night", url: "https://www3.animeflv.net/anime/fate-stay-night",type_id: Type.find_by(name: "Anime").id, category_id: Category.find_by(name: "Magia").id },
        { title: "The Irregular at Magic High School", url: "https://www3.animeflv.net/anime/mahouka-koukou-no-rettousei",type_id: Type.find_by(name: "Anime").id, category_id: Category.find_by(name: "Escolar").id },
        { title: "Hunter X Hunter", url: "https://lectortmo.com/library/manga/212/hunter-x-hunter",type_id: Type.find_by(name: "Manga").id, category_id: Category.find_by(name: "Shonen").id },
        { title: "Gantz", url: "https://lectortmo.com/library/manga/8804/gantz",type_id: Type.find_by(name: "Manga").id, category_id: Category.find_by(name: "Shonen").id },
        { title: "I am a Hero", url: "https://lectortmo.com/library/manga/6102/i-am-a-hero",type_id: Type.find_by(name: "Manga").id, category_id: Category.find_by(name: "Isekai").id },
        { title: "Neo Genesis Evangelion", url: "https://www3.animeflv.net/anime/neon-genesis-evangelion",type_id: Type.find_by(name: "Anime").id, category_id: Category.find_by(name: "Shonen").id },
        { title: "Slam Dunk", url: "https://lectortmo.com/library/manga/11580/slam-dunk",type_id: Type.find_by(name: "Manga").id, category_id: Category.find_by(name: "Escolar").id },
        { title: "Higurashi no Naku Koro Ni", url: "https://www3.animeflv.net/anime/higurashi-no-naku-koro-ni",type_id: Type.find_by(name: "Anime").id, category_id: Category.find_by(name: "Escolar").id }

    ]
)