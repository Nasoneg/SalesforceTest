@isTest
public class ParkLocatorTest {
    
    @isTest static void testParkByCountry(){
    
        Test.setMock(WebServiceMock.class, new ParkServiceMock());
		String[] parks = ParkLocator.country('Japan');
        String[] response = new String[]{'TheBestPark', 'BeautifulPark','WowPark'};
   		System.assertEquals(response, parks);
    }
}