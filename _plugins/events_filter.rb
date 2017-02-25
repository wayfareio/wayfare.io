module Jekyll
  module EventsFilter
    def filter_events(events)
      filtered_events = []
      events.each do |event|
        next if !publishable?(event)
        filtered_events << event
      end
      filtered_events
    end

    def filter_by_location(events, location=nil)
      filtered_events = []
      events.each do |event|
        next if !publishable?(event)
        next if event['location'] != location
        filtered_events << event
      end
      filtered_events
    end

    def filter_by_category(events, category=nil)
      filtered_events = []
      events.each do |event|
        next if !publishable?(event)
        next if !event['categories'].include?(category)
        filtered_events << event
      end
      filtered_events
    end

    def sort_events(events)
      events.sort do |a, b|
        a['dates']['start_date'] <=> b['dates']['start_date']
      end
    end

  protected

    def publishable?(event)
      return false if event['published'] == false
      return false if event['dates']['end_date'].to_i < Time.now.to_i
      true
    end
  end
end

Liquid::Template.register_filter(Jekyll::EventsFilter)
