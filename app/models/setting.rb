class Setting < ActiveRecord::Base
  

  def self.code 
    first.code
  end

  def self.password
    first.password
  end

  def self.welcome_text
    first.sidebar
  end

end
