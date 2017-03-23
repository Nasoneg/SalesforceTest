public class AccountHandler {

    public static Account insertNewAccount(String nameAcc){
        try {
            Account acc = new Account(Name=nameACC);
            insert acc;
            return acc;
        } catch (DmlException e){
            System.debug('A DML exception has occurred: ' + e.getMessage());
            return null;
        }

    }
}