module ApplicationHelper
  def is_admin?
    current_user.try(:is_admin?)
  end
  def is_colleague? 
    current_user.try(:is_colleague?)
  end
  
  def url_with_protocol(url)
    /^http/.match(url) ? url : "http://#{url}"
  end  
end
