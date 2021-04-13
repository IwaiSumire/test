<cfset system = createObject("java", "java.lang.System")>
<cfdump var ="#system.getenv("enail")#">

<cfset email = "#system.getenv("enail")#>

<cfoutput>#email#</cfoutput>