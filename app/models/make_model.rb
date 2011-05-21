class MakeModel < ActiveRecord::Base
   belongs_to :brands, :dependent => :destroy
   validates :name, :presence => true
   acts_as_chainable :select_label => 'Model', :from => :brand
end
