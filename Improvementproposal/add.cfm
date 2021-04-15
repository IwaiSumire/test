<cfquery datasource="sample">
    insert into suggestion
    (
        suggestion_title,
        type_id,
        suggestion_contents,
        filingdate,
        result_id,
        login_id
    )
    values(
        '#suggestion_title#',
        #type_id#,
        '#suggestion_contents#',
        '#filingdate#',
        #result_id#,
        #login_id#
    )
</cfquery>
<cflocation  url="./top.cfm">