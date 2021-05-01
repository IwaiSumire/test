<cfinvoke  webservice="http://localhost:8500/test/cftext/helloworld.cfc?wsdl"
method="syaHello"
returnvarriable="aString">

<cfinvokeargument  name="yourname"  value="いわい">
</cfinvoke>

<cfoutput>
    #aString#
</cfoutput>