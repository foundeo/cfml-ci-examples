<cfset calc = new services.calc()>

<cfset result = calc.add(5,3)>

<cfif result EQ 8>
    PASS: Result was 8
<cfelse>
    Fail: Result was: <cfoutput>#encodeForHTML(result)#</cfoutput>
    <cfheader statuscode="500" statustext="Fail">
</cfif>

<!--- this works but there are better ways to write tests --->