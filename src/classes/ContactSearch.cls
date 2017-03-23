public class ContactSearch {
	
    public static List<Contact> searchForContacts(String name, String mailingCode){
        List<Contact> listCtct = [SELECT Id, Name FROM Contact WHERE LastName=:name AND MailingPostalCode=:mailingCode];
        return listCtct;
    }
}