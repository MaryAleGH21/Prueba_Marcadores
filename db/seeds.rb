# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
 

Bookmark.destroy_all
Kind.destroy_all
Category.destroy_all

tip1= Kind.create(name:"Fábula")
tip2= Kind.create(name:"Serie")
tip3= Kind.create(name:"Pelicula")

cat1= Category.create(name:"Shounen", is_public: false)
cat2= Category.create(name:"Seinen", is_public: false)
cat3= Category.create(name:"Shoujo", is_public: false)

cat4= Category.create(name:"Accion", category_id:cat1, is_public: false)
cat5= Category.create(name:"Ciencia ficcion", category_id:cat1, is_public: false)
cat6= Category.create(name:"Deportes", category_id:cat1, is_public: false)
cat7= Category.create(name:"Romance", category_id:cat1, is_public: false)
cat8= Category.create(name:"Comedia", category_id:cat1, is_public: false)
cat9= Category.create(name:"Drama", category_id:cat1, is_public: false)
cat10= Category.create(name:"Aventura", category_id:cat1, is_public: false)
cat11= Category.create(name:"Fantasia", category_id:cat1, is_public: false)
cat12= Category.create(name:"Sobrenatural", category_id:cat1, is_public: false)
cat13= Category.create(name:"Escolar", category_id:cat1, is_public: false)

cat14= Category.create(name:"Accion", category_id:cat2, is_public: false)
cat15= Category.create(name:"Ciencia ficcion", category_id:cat2, is_public: false)
cat16= Category.create(name:"Deportes", category_id:cat2, is_public: false)
cat17= Category.create(name:"Romance", category_id:cat2, is_public: false)
cat18= Category.create(name:"Comedia", category_id:cat2, is_public: false)
cat19= Category.create(name:"Drama", category_id:cat2, is_public: false)
cat20= Category.create(name:"Aventura", category_id:cat2, is_public: false)
cat21= Category.create(name:"Fantasia", category_id:cat2, is_public: false)
cat22= Category.create(name:"Sobrenatural", category_id:cat2, is_public: false)
cat23= Category.create(name:"Escolar", category_id:cat2, is_public: false)

cat24= Category.create(name:"Accion", category_id:cat3, is_public: false)
cat25= Category.create(name:"Ciencia ficcion", category_id:cat3, is_public: false)
cat26= Category.create(name:"Deportes", category_id:cat3, is_public: false)
cat27= Category.create(name:"Romance", category_id:cat3, is_public: false)
cat28= Category.create(name:"Comedia", category_id:cat3, is_public: false)
cat29= Category.create(name:"Drama", category_id:cat3, is_public: false)
cat30= Category.create(name:"Aventura", category_id:cat3, is_public: false)
cat31= Category.create(name:"Fantasia", category_id:cat3, is_public: false)
cat32= Category.create(name:"Sobrenatural", category_id:cat3, is_public: false)
cat33= Category.create(name:"Escolar", category_id:cat3, is_public: false)

Bookmark.create(
    [
        {title: "Dr. Stone", url: "https://www3.animeflv.net/anime/dr-stone", kind_id: tip1.id, category_id: cat10.id},
        {title: "The Wire", url: "https://www3.animeflv.net/anime/TheWire", kind_id: tip2.id, category_id: cat7.id}, 
        {title: "Kimetsu no Yaiba", url: "https://www3.animeflv.net/anime/kimetsu-no-yaiba", kind_id: tip1.id, category_id: cat12.id},
        {title: "Kuroshitsuji", url: "https://www3.animeflv.net/anime/kuroshitsuji", kind_id: tip1.id, category_id: cat11.id},
        {title: "Jujutsu kaisen", url: "https://www3.animeflv.net/anime/jujutsu-kaisen-tv", kind_id: tip2.id, category_id: cat12.id},
        {title: "Pulp Fiction", url:"https://www.20minutos.es/cine/cartelera/pelicula/1691/pulp-fiction/", kind_id: tip3.id, category_id: cat13.id},
        {title: "Non Non Biyori Movie:Vacation", url: "https://www3.animeflv.net/anime/non-non-biyori-movie-vacation", kind_id: tip3.id, category_id: cat18.id},
        {title:"La lista de Schindler", url:"https://www.20minutos.es/cine/cartelera/pelicula/2098/la-lista-de-schindler/", kind_id: tip3.id, category_id:  cat16.id},
        {title:"Mushishi Zoku Shou: Suzu no Shizuku", url: "https://www3.animeflv.net/anime/mushishi-zoku-shou-suzu-no-shizuku", kind_id: tip3.id, category_id: cat22.id},
        {title:"La Mirada de Ulises", url:"https://www.20minutos.es/cine/cartelera/pelicula/11480/la-mirada-de-ulises/", kind_id: tip3.id, category_id:  cat21.id},
        {title:"Watashi ga Motete Dousunda", url:"https://www3.animeflv.net/anime/watashi-ga-motete-dousunda", kind_id: tip1.id, category_id: cat28.id},
        {title:"Meiji Tokyo Renka", url:"https://www3.animeflv.net/anime/meiji-tokyo-renka", kind_id: tip1.id, category_id: cat31.id},
        {title:"Cardcaptor Sakura: Clear Card-hen", url:"https://www3.animeflv.net/anime/cardcaptor-sakura-clear-cardhen", kind_id: tip2.id, category_id:  cat33.id},
        {title:"Fukumenkei Noise", url:"https://www3.animeflv.net/anime/fukumenkei-noise", kind_id: tip1.id, category_id: cat27.id}, 
        {title:"Orange", url:"https://www3.animeflv.net/anime/orange", kind_id: tip1.id, category_id: cat25.id},
        {title:"Hoozuki no Reitetsu 2nd Season", url:"https://www3.animeflv.net/anime/hoozuki-no-reitetsu-2nd-season", kind_id: tip1.id, category_id:  cat21.id},
        {title:"3-gatsu no Lion", url:"https://www3.animeflv.net/anime/3-gatsu-no-lion", kind_id: tip2.id, category_id: cat19.id},
        {title:"Boku dake ga Inai Machi", url:"https://www3.animeflv.net/anime/boku-dake-ga-inai-machi", kind_id: tip1.id, category_id: cat22.id},
        {title:"Danna ga Nani wo Itteiru ka Wakaranai Ken 2 Sure-me", url:"https://www3.animeflv.net/anime/danna-ga-nani-wo-itteiru-ka-wakaranai-ken-2-sure-me", kind_id: tip1.id, category_id: cat18.id},
        {title:"Kiseijuu: Sei no Kakuritsu", url:"https://www3.animeflv.net/anime/kiseijuu-sei-no-kakuritsu", kind_id: tip1.id, category_id: cat15.id}
    ]
)

