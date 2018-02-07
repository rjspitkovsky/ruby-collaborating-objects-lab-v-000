require 'pry'

class MP3Importer
  attr_accessor :path, :filenames

  @@filenames = []

    def initialize(path)
      @path = path
      #@filenames = []
    end

    def files
      Dir.entries("./spec/fixtures/mp3s").each do |filename|
        @@filenames << filename
      end
      @@filenames.reject! do |filename|
        filename == "." || filename == ".."
      end
    end

    def self.filenames
      @@filenames
    end

    def import
      # @filenames.each do |filename|
      #   artist_name = filename.split(" - ")[0]
      #   song_name = filename.split(" - ")[1]
      #   instance = Artist.new(artist_name)
      #   instance.add_song(song_name)
      # end


      @@filenames.uniq.each do |filename|
        Song.new_by_filename(filename)
      end
      #Artist.all.size
    end
binding.pry
  end
