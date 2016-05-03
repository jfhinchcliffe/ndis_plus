class PagesController < ApplicationController
  def home
  end
  
  def maptest
    @service_dropdown = Masterservice.all.map{ |s| [ s.name ] }
    if params[:search].present?
      @pp = Providerprofile.joins(:providerservices).where("providerservices.name = ?", params[:search])
    else
      @pp = Providerprofile.all
    end
    
    @count = @pp.count
    if @count > 1 || @count == 0
      @countmessage = "#{@count} providers found"
    else
      @countmessage = "#{@count} provider found"
    end
        
    @service_dropdown = Masterservice.all.map{ |s| [ s.name ] }
   
    
    @hash = Gmaps4rails.build_markers(@pp) do |providerprofile, marker|
      if providerprofile.latitude.present? || providerprofile.longitude.present?
        marker.lat providerprofile.latitude
        marker.lng providerprofile.longitude
        marker.json({:id => providerprofile.id })
        marker.infowindow render_to_string(:partial => "/providerprofiles/infowindow", :locals => { :object => providerprofile})
      end
    end
  end
end
