<cfinvoke  component="mycomponent" method="getName" returnvariable="retval">
    <cfinvokeargument  name="firstName"  value="SUMIRE">
    <cfinvokeargument  name="lastName"  value="IWAI">
</cfinvoke>

<cfoutput>#retval#
</cfoutput>

<cfinvoke  component="mycomponent" method="getName" returnvariable="retval2" firstName="岩井" lastName="菫">
</cfinvoke>
<cfoutput>#retval2#
</cfoutput>

<cfobject  component="mycomponent" name="myComponentCFC">
<cfset setName = myComponentCFC.getName(firstName="菫",lastName="岩井")>
<cfoutput>#setName#
</cfoutput>

<cfscript>
    myComponetCFC = createObject("component", "mycomponent");
    setName=myComponentCFC.getName(firstName="sumire",lastName="iwai");
</cfscript>
<cfoutput>#setName#
</cfoutput>