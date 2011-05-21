class Manufacturer < ActiveRecord::Base
      has_many :brands, :dependent => :destroy
      validates :name, :presence => true
      acts_as_chainable :to => :band, :root => true
end
