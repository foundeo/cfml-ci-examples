<!doctype html>
<html>
    <head>
        <link href="https://stackpath.bootstrapcdn.com/bootswatch/4.4.1/journal/bootstrap.min.css" rel="stylesheet" integrity="sha384-0d2eTc91EqtDkt3Y50+J9rW3tCXJWw6/lDgf1QNHLlV0fadTyvcA120WPsSOlwga" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <h1>Example Daily News</h1>
            <div class="jumbotron"><div class="lead">All the latest news</div></div>
            <cfset news = request.newsService.latest()>
            <cfoutput query="news" encodefor="html">
                <h2>#news.title# <small>#dateFormat(news.date_published, "mmmm d, yyyy")#</small></h2>
                <p>#news.story#</p>
            </cfoutput>
            <cfdump var="#news#">
        </div>
    </body>
</html>