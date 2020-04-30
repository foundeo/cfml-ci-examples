component {

    remote function latest() {
        return queryExecute("SELECT * FROM news ORDER BY id DESC LIMIT 20");
    }

    remote function story(numeric id) {
        return queryExecute("SELECT * FROM news WHERE myid = :id", {id:arguments.id});
    }

}