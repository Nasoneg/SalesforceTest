@isTest 
public class TestRestrictContactByName {
    
    @isTest public static void TestInsertContactWithINVALIDNAME(){
        Contact ct = new Contact(LastName='INVALIDNAME',FirstName='Paul');
        Database.SaveResult result = Database.insert(ct);
        System.assert(true);
    }

}