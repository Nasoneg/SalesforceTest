public class ContactAndLeadSearch {

    public static List<List< SObject>> searchContactsAndLeads(String str){
       /* // Add a contact to this account.
        Contact con = new Contact(
            FirstName='Carol',
            LastName='Smith',
            Phone='(415)555-1212',
            Department='Wingo');
        insert con;
        
        Lead ld = new Lead(
            FirstName='Michel',
            LastName='Smith');
        insert ld;*/
        
        List<List<sObject>> searchList = [FIND :str IN ALL FIELDS 
                   RETURNING Lead(Name),Contact(LastName)];
        return searchList;
    }
}