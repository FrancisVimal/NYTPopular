# NYTPopular

A simple app to hit the NY Times Most Popular Articles API and:

1.Show a list of articles newest first(sorted based on date)
2.Shows details when items on the list are tapped.
3.Show Cached articles if network not available

We'll are using the most viewed section of this API. http://api.nytimes.com/svc/mostpopular/v2/mostviewed/{section}/{period}.json?apikey= sample-key To test this API, For testAPI we used

1.all-sections for the section path component in the URL
2.7 for period
