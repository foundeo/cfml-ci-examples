<!--- 
    oh no, we have an unscoped variable
    this is going to cause a issue with the searchImplicitScopes update
    
    fixinator will detect this when confidence=low
--->
<cfoutput encodefor="html">
    Hello #name#
</cfoutput>