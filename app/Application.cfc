component {
    this.name = "cfml-ci-examples";

    this.datasources["news"] = {
        class: 'com.mysql.jdbc.Driver', 
        connectionString: 'jdbc:mysql://#server.system.environment.DB_HOST#:3306/example_news', 
        username: server.system.environment.DB_USER, 
        password: server.system.environment.DB_PASS,
        driver: "other",
        timezone:"UTC"
    }
    
    this.datasource = "news";

    public function onRequestStart() {
        request.newsService = new services.news();
    }
}