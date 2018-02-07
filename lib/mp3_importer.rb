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
      @@filenames.uniq.each do |filename|
        Song.new_by_filename(filename)
      end
    end

  end
