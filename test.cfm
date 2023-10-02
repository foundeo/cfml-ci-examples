<cfquery>
    SELECT * FROM table
    WHERE id = <cfqueryparam value="#url.id#" cfsqltype="integer">
</cfquery>
