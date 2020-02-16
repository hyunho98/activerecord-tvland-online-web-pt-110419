class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters

  def actors_list
    self.actors.collect{|actor| "#{actor.full_name}"}
  end

  def build_network(attributes)
    self.Network.create(attributes)
  end
end
