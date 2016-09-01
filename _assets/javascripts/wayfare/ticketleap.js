Wayfare.Ticketleap = {
  events: [],
  sortedEvents: function() {
    return _.sortBy(this.events, function(e) {
      return e.startDate;
    });
  },
  getEvents: function() {
    return $.ajax("https://public-api.ticketleap.com/organizations/wayfare/events?key=7331436096006273&page_size=50&dates_after="+moment().format('YYYY-MM-DD'), {
      dataType: "jsonp",
      success: function(data) {
        this.events = data.events;
      }.bind(this)
    });
  }
}
