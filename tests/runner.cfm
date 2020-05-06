<cfparam name="reporter" default="html">
<cfset r = new testbox.system.TestBox( directory="specs", reporter=reporter, verbose=true) >
<cfoutput>#r.run()#</cfoutput>
