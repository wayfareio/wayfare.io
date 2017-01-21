module Jekyll
  module EventsFilter
    def filter_events(events, location=nil)
      filtered_events = []
      events.each do |event|
        next if event['published'] == false
        next if event['dates']['end_date'].to_i < Time.now.to_i
        if !location.nil?
          next if event['location'] != location
        end
        filtered_events << event
      end
      filtered_events
    end

    def sort_events(events)
      events.sort do |a, b|
        a['dates']['start_date'] <=> b['dates']['start_date']
      end
    end
  end
end

Liquid::Template.register_filter(Jekyll::EventsFilter)
