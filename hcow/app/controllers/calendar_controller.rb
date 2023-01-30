class CalendarController < ApplicationController
  def index
    @featured_events = Event.where(featured: true)
  end
end
