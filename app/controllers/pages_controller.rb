class PagesController < ApplicationController
  def home
  end
  
  def maptest
    @providerprofile = Providerprofile.last
  end
end
