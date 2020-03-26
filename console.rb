require_relative( 'models/casting' )
require_relative( 'models/movie' )
require_relative( 'models/star' )

require( 'pry-byebug' )

Casting.delete_all()
Star.delete_all()
Movie.delete_all()

star1 = Star.new({ 'first_name' => 'Brad',
                    'last_name' => 'Pitt'})
star1.save()

star2 = Star.new({ 'first_name' => 'Julia',
                  'last_name' => 'Roberts'})
star2.save()

movie1 = Movie.new({'title' => "Fight Club",
                  'genre' => "Psychological Thriller"})
movie1.save()

movie2 = Movie.new({'title' => "Pretty Woman",
                  'genre' => "Romance"})
movie2.save()

casting1 = Casting.new({'movie_id' => movie1.id,
                        'star_id' => star1.id,
                        'fee' => 200})
casting1.save()

casting2 = Casting.new({'movie_id' => movie2.id,
                        'star_id' => star2.id,
                        'fee' => 20000000})
casting2.save()

binding.pry
nil
