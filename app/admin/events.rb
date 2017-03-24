ActiveAdmin.register Event do

  permit_params :name, :topic, :talk, :workshop, :panel, :date

end
