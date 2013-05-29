public class AppReviews{

    private final String posId;
    
    // The extension constructor initializes the private member
    // variable pos by using the getRecord method from the standard
    // controller.
    public AppReviews() {
        this.posId= System.currentPageReference().getParameters().get('posId');
    }
    
    public List<Job_Application__c> JobApps {
        get{
            if (JobApps == null){
                jobApps = new List<Job_Application__c>([select j.id, j.Candidate__c, j.Status__c, j.Candidate__r.First_Name__c, j.Candidate__r.Last_Name__c from Job_Application__c j where Position__c=:posId]);
            }
            return jobApps;
        }
        set; 
    }
    public ID JobAppId {get;set;}
    public String reviewType { get;set; } 
    public String candidateName {get;set;}
    
   
    
    public PageReference reviewsOfType(){
        // this function sorts through a job application's list of review records and creates a list of reviews all of the same Type
        //  the Type is determined by the "reviewType" variable 
        Boolean bFound = false;
        Integer index = 0;
        if (jobApps.size() > 0){ 
            while((!bFound) && (index < jobApps.size())){               
                if (jobApps[index].Id == JobAppId){
                    bFound = true;
                } else {
                    index++;
                }
            }
            if(bFound){
                Job_Application__c job = jobApps[index];
                candidateName = job.Candidate__r.First_Name__c + ' ' + job.Candidate__r.Last_Name__c;
                
            } else { candidateName = null; }
        }                   
        return null;
    }
}