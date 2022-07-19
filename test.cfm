<cfquery>
    SELECT * FROM table
    WHERE id = <cfqueryparam value="#url.id#" cfsqltype="cf_sql_integer">
</cfquery>