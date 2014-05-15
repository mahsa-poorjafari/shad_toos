#encoding: utf-8
namespace :db do
  desc "creates default pages -> about us and contact us"
  task :add_default_pages => :environment do
    Page.create(:title => "Contact us", :title_fa => "تماس با ما", :title_ar => "الاتصال بنا") if Page.where(title:"Contact us").blank?
    Page.create(:title => "About us", :title_fa => "درباره ما", :title_ar => "من نحن") if Page.where(title:"About us").blank?
    p "#{Page.count} pages created"
  end

  desc "creates default users"
  task :create_default_users => :environment do
    User.create(user_name:"admin", password:"123qwe", email:"web.development@raush.ir") if User.where(user_name:"admin").blank?
    p "#{User.count} users created"
  end

end
