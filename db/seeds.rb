require 'bundler/setup'
require "pry"

require_relative "../db/connection"
require_relative "../models/wdi_instagram"

Picture.destroy_all

Picture.create(author: "Jesse", photo_url: "http://www.jeffbullas.com/wp-content/uploads/2012/06/10-Cool-Google+-Brand-Covers.jpg", date_taken: "2/26/15")

binding.pry
