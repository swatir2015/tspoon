module ApplicationHelper
  def get_city_name(cities, city_id)
    selected = cities.select {|c| c.id == city_id }[0]
    selected.class
  end
end
