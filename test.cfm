<cfquery>
    SELECT * FROM table
    WHERE id = <cfqueryparma value="#url.id#" cfsqltype="cf_sql_integer">
</cfquery>