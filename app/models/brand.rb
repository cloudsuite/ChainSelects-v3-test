class Brand < ActiveRecord::Base
   belongs_to :manufacturer
   validates :name, :presence => true
   has_many :make_models, :dependent => :destroy
   acts_as_chainable :to => :make_model, :from => :manufacturer
end
