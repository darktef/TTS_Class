class HomeController < ApplicationController
  def index
  	@states = %w(HI AK CA OR WA ID UT NV AZ NM CO WY MT ND SD NB KS OK TX LA AR MO IA MN WI IL IN MI OH KY TN MS AL GA FL SC NC VA WV DE MD PA NY NJ CT RI MA VT NH ME DC )
    
    @states.sort!



    if params[:city] != nil
       params[:city].gsub! " ", "_"
    end
    
    if params[:city] != nil
        response = HTTParty.get("http://api.wunderground.com/api/#{ENV['wunderground_api_key']}/geolookup/conditions/q/#{params[:state]}/#{params[:city]}.json") 
    else
        response = HTTParty.get("http://api.wunderground.com/api/#{ENV['wunderground_api_key']}/geolookup/conditions/q/TX/Dallas.json")
    end
       
    @location = response["location"]["city"]
    @temp_f = response["current_observation"]["temp_f"]
    @temp_c = response["current_observation"]["temp_c"]
    @weather_icon = response["current_observation"]["icon_url"]
    @weather_words = response["current_observation"]["weather"] 
    @forecast_link = response["current_observation"]["forecast_url"]
    @feels_like = response["current_observation"]["feelslike_f"]

    # only one pic will return for "Mostly Cloudy"
    if @weather_words != "Mostly Cloudy"
      @search_query = "weather " + @weather_words.downcase
    else
      @search_query = @weather_words.downcase
    end
    # downcase here makes a lots of difference....capitalize word actually return 
    # different result compared to that from Postman and web browser

    pix_rep = HTTParty.get("http://pixabay.com/api",:query=>{:key => ENV['pixabay_api_key'], :q => @search_query})
    @totHits = pix_rep["totalHits"]
    if @totHits >20
      @id = rand(20)
    else
      @id = rand(pix_rep["totalHits"])
    end

    @url = pix_rep["hits"][@id]["webformatURL"]

=begin
  Original fecth pics from Unsplash
    if @weather_words == "Overcast" || @weather_words == "Cloudy"
	      @url = "https://images.unsplash.com/photo-1445264618000-f1e069c5920f?crop=entropy&dpr=2&fit=crop&fm=jpg&h=775&ixjsv=2.0.0&ixlib=rb-0.3.5&q=50&w=1250"
  	elsif @weather_words == "Clear" || @weather_words == "Sunny" || @weather_words == "Mostly Sunny"
  	    @url = "https://images.unsplash.com/photo-1419133203517-f3b3ed0ba2bb?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&w=1080&fit=max&s=23401e5526fc89877400795aef7e773e"
  	elsif @weather_words == "Rain" || @weather_words == "Thunderstorms"
  	    @url = "https://images.unsplash.com/photo-1428592953211-077101b2021b?crop=entropy&dpr=2&fit=crop&fm=jpg&h=775&ixjsv=2.0.0&ixlib=rb-0.3.5&q=50&w=1250"
  	elsif @weather_words == "Snow" || @weather_words == "Sleet" || @weather_words == "Flurries"
  	    @url = "https://images.unsplash.com/photo-1446463969211-28bf6e20b315?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&w=1080&fit=max&s=80a71632b3e71ffec32eb9195e0403cc"
  	elsif @weather_words == "Fog" 
  	    @url = "https://images.unsplash.com/photo-1446491429004-809880bd132e?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&w=1080&fit=max&s=d8d94d86d4e498c13806418ba040969c"
  	else 
  	    @url = "https://images.unsplash.com/photo-1421081177127-339f586c9b49?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&w=1080&fit=max&s=f2d20cd9d3c70e91c0a2e2d35671a2f4"
  	end
=end
	
  end

  def test
  	response = HTTParty.get("http://api.wunderground.com/api/#{ENV['wunderground_api_key']}/conditions/geolookup/q/TX/Dallas.json")
    
    @location = response['location']['city']
    @temp_f = response['current_observation']['temp_f']
    @temp_c = response['current_observation']['temp_c']
    @weather_icon = response['current_observation']['icon_url']
    @weather_words = response['current_observation']['weather'] 
    @forecast_link = response['current_observation']['forecast_url']
    @feels_like = response['current_observation']['feelslike_f']
  end
end
