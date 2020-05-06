<cfparam name="reporter" default="simple">
<cfset r = new testbox.system.TestBox( directory="specs", reporter=reporter, verbose=true) >
<cfoutput>#r.run()#</cfoutput>
