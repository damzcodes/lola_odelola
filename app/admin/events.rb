ActiveAdmin.register Event do

  permit_params :topic, :name, :talk, :workshop, :date

end
