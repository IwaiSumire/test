<cfquery datasource="sample" name="toemail">
    select email
    from secret
    where id = 1;
</cfquery>

<cfdump var="#form#">

<cfoutput query="toemail">

<cfmail to="#email#" from="#Form.Email_address#" subject="HPからのご意見">
    
    HPからのご意見
    Emailアドレス：#Form.Email_address#
    ご意見：#Form.RequestBody#

</cfmail>

</cfoutput>
