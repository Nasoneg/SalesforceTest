@isTest
public class TestVerifyDate {

    @isTest static void testCheckDatesD2() {
        Date d1 = Date.newInstance(2017, 1, 1);
        Date d2 = Date.newInstance(2017, 1, 15);
        Date d = VerifyDate.CheckDates(d1, d2);
        System.assertEquals(d2,d);
    }
    
    @isTest static void testCheckDatesNotD2() {
        Date d1 = Date.newInstance(2017, 1, 1);
        Date d2 = Date.newInstance(2017, 2, 15);
        Date d = VerifyDate.CheckDates(d1, d2);
        System.assertNotEquals(d2,d);
    }
}