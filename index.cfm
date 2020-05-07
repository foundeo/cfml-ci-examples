<!doctype html>
<html>
    <head>
        <title>Calc</title>
        <link href="https://stackpath.bootstrapcdn.com/bootswatch/4.4.1/journal/bootstrap.min.css" rel="stylesheet" integrity="sha384-0d2eTc91EqtDkt3Y50+J9rW3tCXJWw6/lDgf1QNHLlV0fadTyvcA120WPsSOlwga" crossorigin="anonymous">
        <link rel="shortcut icon" href="/calculator.svg" type="image/svg">
    </head>
    <body>
        <div class="container mt-4">
            <h1><img src="/calculator.svg" width="40" height="40"> Example Calculator Site</h1>
            <div class="jumbotron"><div class="lead">All the latest calculations</div></div>
            
            <form>
                <div class="row">
                    <div class="col-2"><input type="number" id="x" class="form-control"></div>
                    <div class="col-1 text-center"><h2>+</h2></div>
                    <div class="col-2"><input type="number" id="y" class="form-control"></div>
                    <div class="col-1 text-center"><button type="button" id="addButton" class="btn btn-primary">=</button></div>
                    <div class="col-2"><input type="text" id="z" class="form-control" disabled="disabled"></div>
                </div>
            </form>
            
            <footer class="mt-4">&copy; <a href="https://foundeo.com/">Foundeo Inc.</a> <cfoutput>#year(now())#</cfoutput></footer>

            <script>
                document.addEventListener('click', function (event) {
                    var x = document.getElementById('x');
                    var y = document.getElementById('y');
                    var z = document.getElementById('z');
                    if (event.target.id == "addButton") {
                        fetch("/services/calc.cfc?method=add&returnformat=json&x=" + x.value + "&y=" + y.value).then(function(data) {
                            data.json().then(function(data) {
                                z.value = data;
                            });
                        });
                    }
                    
                });
            </script>
        </div>
    </body>
</html>