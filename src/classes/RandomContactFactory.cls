public class RandomContactFactory {
	
    public static List<Contact> generateRandomContacts(Integer nb, String str){
        List<Contact> contacts = new List<Contact>();
        for(Integer i = 0; i < nb; i++){
            contacts.add(new Contact(LastName=str,FirstName='TestContact'+i));
        }
        return contacts;
    }
}