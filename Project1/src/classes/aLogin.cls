public class aLogin {
    public aLogin__c obj{get;set;}
    public String username{get;set;}
    public String password{get;set;}
     public AdminRegister__c fet=null;
     PageReference obj1;

    
    public alogin()
    {
        obj = new alogin__c();
    }
    public PageReference doalogin()
    {
        try
{
obj.name = username;
obj.password__c = password;

fet=[select Name from AdminRegister__c where Email__c=:username and password__c=:password];
insert obj;
}
catch(Exception e)
{
}
if(fet!=null)
{

obj1=new PageReference('/apex/adminp');
obj1.setRedirect(true);
}
else
{
obj1=new PageReference('/apex/LoginStudent?success=username and password are incorrect');
obj1.setRedirect(true);
}
return obj1;
    }
    public PageReference doaregister()
    {
      
        insert obj;
        //PageReference ref = new pageReference('/' + obj.id);
        PageReference ref = new pageReference('/apex/adminreg'  );
        ref.setRedirect(true);
        return ref;
    }

}