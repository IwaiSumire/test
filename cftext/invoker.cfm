<cfinvoke  
component="helloworld"
method="sayhello"
returnVariable="aString"
>

<!---メソッドの引数を受け取る場合--->
<cfinvokeargument  name="yourname"  value="岩井">
</cfinvoke>

<cfoutput>
    #aString#
</cfoutput>