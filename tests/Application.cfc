component {
    this.name = "calcTests";

    this.mappings = { 
		"/testbox" = getDirectoryFromPath(getCurrentTemplatePath()) & "testbox",
		"/specs" = getDirectoryFromPath(getCurrentTemplatePath()) & "specs"
	};
}