require 'pry'


class Song
  attr_accessor :name, :artist, :filename


  def initialize(name)
    @name = name
    @artist = artist
  end

  # def artist_name=(artist_name)
  #   Artist.find_or_create_by_name(artist_name)
  #   Artist.add_song(self)
  # end

  def self.new_by_filename(filename) #The song gets the correct filename from MP3Importer
    artist_name = filename.split(" - ")[0]#The artist_name is correct
    song_name = filename.split(" - ")[1]#The song_name is correct
    title = self.new(song_name)#Instantiates a new song instance with the song_name being the song name
    title.artist_name=(artist_name) #Associates song with artist using helper method, .artist_name=
    #Artist.find_or_create_by_name(artist_name)
    #title.artist.add_song(song_name)

    #self.artist_name=(artist_name)
    # title.artist = artist_name
    # artist_instance = Artist.new(artist_name)
    # artist_instance.add_song(song_name)
    # artist_instance.Artist.name
    # instance.name
     title
  end

  def artist_name=(artist_name)#takes in the string, runs the find_or_create code then assigns an Artist object
    self.artist = Artist.find_or_create_by_name(artist_name)



    # if @@artists.include?(artist_name)
    #   self.artist.add_song(self.name)
    #   self.artist.name = name
    # else
    #   self.artist = Artist.new(artist_name)
    # end




    # if self.artist != nil #self.artist will always be nil here.
    #   #self.artist.name = name
    #   self.artist.add_song(self.name)
    #   self.artist.name = name
    # else
    #   self.artist = Artist.new(artist_name)
    # end




    # if (self.artist.nil?)
    #   self.artist = Artist.new(artist_name)
    # else
    #   self.artist.name = name
    # end
    # self.artist.add_song(self.name)

    #Artist.find_or_create_by_name(artist_name)
    #
    # self.all.detect do |song|
    #   song.name ==
  end


  # def self.artist_name=(artist_name)
  #   Artist.find_or_create_by_name(artist_name)
  #   Artist.add_song(self)
  # end


  #   self.artist_name=(artist_name)
  #   self.add_song=(song_name)
  # end
  #
  # def self.artist_name=(artist_name)
  #   artist_name = Artist.new(artist_name)
  #   artist_name.add_song(name)
  #   Artist.find_or_create_by_name(artist_name)
  #   #Artist.add_song(name)
  # end
  #
  # # def self.add_song=(song_name)
  # #   self.add_song(song_name)
  # # end
binding.pry
end
