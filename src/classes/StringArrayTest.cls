public class StringArrayTest {

    public static List<String> generateStringArray(Integer nb){
        List<String> tests = new List<String>();
        for(Integer i = 0; i< nb; i++){
            tests.add('Test ' + i);
        }
        return tests;
    }
}