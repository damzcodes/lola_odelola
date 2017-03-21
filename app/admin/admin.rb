ActiveAdmin.register Admin do
  permit_params :email, :password, :password_confirmation
end
