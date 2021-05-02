<cfthread  name="threadX" action="run" countX=0>
    <cfloop index="i" from="1" to="100000">
        <cfset countX = countX+1>
    </cfloop>
    <cfdump  var="#countX#">
</cfthread>

<cfthread  name="threadZ" action="run" ComoleteMsg="">
    <cfscript>

        thread.sleepTimes=0;
        //---終了でなければ
        while((threadX.Status != "COMPLETED") and (threadX.Status != "TERMINATED")) {
            sleep(5);
            thread.sleepTimes++;
        }
        if(threadX.Status == "COMPLETED") {
            ComoleteMsg = "100000回ループが終了しました"
        }
    </cfscript>

    <cfdump  var="#ComoleteMsg#">
</cfthread>

<cfthread  name="threadX,threadZ" action="join" timeout="100000"/>

<cfoutput>
    threadXは#threadX.output#回ループしました<br>
    threadXが完了するまでにカウントされたsleepTimesは#threadZ.sleepTimes#回です<br>
    #threadZ.output#
</cfoutput>

<cflog  text="text">