public class firstClass {
public String testRepeat(Integer inbound) {
for (Integer I = 0; I < inbound; I++){
system.debug('Execution ' + I);
}
return ('The code ran ' + inbound + ' times');
}

static testMethod void testTestRepeat(){
firstClass trTest = new firstClass();
system.assertEquals('The code ran 4 times', trTest.testRepeat(4));
}


public List<string> dupEntries(List<string> checkEntries) {
List<string> dupValues = new List<string>();
Set<string> dupID = new Set<string>();
for(String s : checkEntries) {
    if (!dupID.add(s)){
        dupValues.add(s);
    }
}
return dupValues;
}

static testMethod void testDupEntries() {
List<string> testDups = new List<string>();
List<string> compareResult = new List<string>();
firstClass testClass = new firstClass();
testDups.add('One');
testDups.add('Two');
testDups.add('Three');
testDups.add('Two');
compareResult.add('Two');
system.assertEquals(compareResult,
testClass.dupEntries(testDups));
} 


}