<cfquery>
    SELECT * FROM table
    WHERE id = <cfqueryparma value="#url.id#" cfsqltype="integer">
</cfquery>
