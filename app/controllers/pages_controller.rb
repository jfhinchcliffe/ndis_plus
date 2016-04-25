class PagesController < ApplicationController
  def home
  end
  
  def maptest
    @providerprofiles = Providerprofile.all
    @pp = Providerprofile.all
    @hash = Gmaps4rails.build_markers(@providerprofiles) do |providerprofile, marker|
      if providerprofile.latitude.present? || providerprofile.longitude.present?
        marker.lat providerprofile.latitude
        marker.lng providerprofile.longitude
        marker.json({:id => providerprofile.id })
        marker.infowindow render_to_string(:partial => "/providerprofiles/infowindow", :locals => { :object => providerprofile})
      end
    end
  end
end
