def search
  @@anus = params[:value]
  if params[:value].length.to_i == 5
    cities = City.select([:code]).where("lower(code) LIKE ?", "#{params[:value].downcase}%")
    result = cities.collect do |t|
      {code: t.code}
    end
    if result.any?
      result = {:status => true}
      respond_to do |format|
        format.json { render :json => result.to_json }
      end
    else
      result = {:status => false}
      respond_to do |format|
        format.json { render :json => result.to_json }
      end
    end
  else
    result = {:status => nil}
    respond_to do |format|
      format.json { render :json => result.to_json }
    end
  end
end