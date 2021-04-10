
<cfmail to="opz09966@gmail.com" from="#Form.Email_address#" subject="HPからのご意見">
    <cfdump var="#form#">
    HPからのご意見
    Emailアドレス：#Form.Email_address#
    ご意見：#Form.RequestBody#
</cfmail>

