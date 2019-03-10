# NYTPopular

NYTPopular is an iOS App .Developed in xcode 10.1 and Swift 4.2



A simple app to hit the NY Times Most Popular Articles API and:

1.Show a list of articles newest first(sorted based on date)
2.Shows details when items on the list are tapped.
3.Show Cached articles if network not available

We'll are using the most viewed section of this API. http://api.nytimes.com/svc/mostpopular/v2/mostviewed/{section}/{period}.json?apikey= sample-key To test this API, For testAPI we used

1.all-sections for the section path component in the URL
2.7 for period

Libraries used show Below

1.Alamofire(Api services)
2.SDWebImage/WebP
3.SVProgressHUD

App Flow


![](ezgif.com-video-to-gif.gif)


1.Coverage  checking

![](https://github.com/FrancisVimal/NYTPopular/blob/master/Screenshot%202019-03-10%20at%204.33.25%20PM.png)

2.Test repors

