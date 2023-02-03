class Web::EventsController < ApplicationController
  def calendar
    @featured_events = Event.where(featured: true)
  end

  def show
  end
end