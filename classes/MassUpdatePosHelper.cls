public class MassUpdatePosHelper {
    //Static variables are local to the context of a Web request
    //or testMethod during a runTests call.
    //Therefore, we can set this static variable in the before
    //trigger when we validate, and insert the proporsed changes
    //during the after trigger
    private static List<Position__c> posToRemember = null;
    
    public static void rememberPosForUpdate(List<Position__c> Pos) {
        posToRemember = Pos;
    }

    public static List<Position__c> getPosForUpdate() {
        return posToRemember;
    }
}