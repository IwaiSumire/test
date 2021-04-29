<cfparam  name="attributes.keyword" default="">
<cfparam  name="attributes.content" default="">

<cfswitch expression="#thisTag.executionMode#"><!---実行モード--->
<cfcase value="start">
    <cfdump  var="#thisTag#" label="Start Tag">
    <hr>
    <cfif len(attributes.content)>
        <cfset keyColdFusion = "<strong>" & attributes.keyword & "</strong>">
        <cfset newGeneratedContent = replaceList(attributes.content, attributes.keyword, keyColdFusion)>
        <cfoutput>#newGeneratedContent#これ
        </cfoutput>
    </cfif>
</cfcase>
<cfcase  value="end">
    <cfset keyColdFusion = "<strong>" & attributes.keyword & "</strong>">
    <cfset newGeneratedContent = replaceList(thisTag.GeneratedContent,attributes.keyword , keyColdFusion)>
    <cfset thisTag.newGeneratedContent = newGeneratedContent & "ほげ">
    <hr>
    <cfdump  var="#thisTag#" label="EndTag">
</cfcase>

</cfswitch>