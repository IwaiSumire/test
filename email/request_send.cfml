<cfmail to="opz09966@gmail.com" from="#Form.Email_address#"  subject="HPからのご意見">
    HPからのご意見
    Emailアドレス：#Form.Email_address#
    ご意見：#Form.RequestBody#
</cfmail>
<cfmail to="#Form.Email_address#" from="opz09966@gmail.com"  subject="ご意見ありがとうございます。">
    #Form.Email_address#様
    ご意見ありがとうございます。
    
</cfmail>