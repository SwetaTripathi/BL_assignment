public class EmpWageComptation{

     public static final int IS_FULL_TIME=1;
      public static final int IS_PART_TIME=2;
      public static final int EMP_RATE_PER_HR=20;
      public static final int NUM_OF_WORKING_DAYS=20;
        public static final int MAX_HOURS=10;

     public static void main(String[] args) {

    System.out.println("WELCOME TO EMPLOYEE WAGE COMPTUTATION PROBLEM");
            int empHrs=0, totalEmpHrs=0;
             int empWage=0, totalEmpWage=0, totalWorkingDays=0;
             while( totalEmpHrs<MAX_HOURS && totalWorkingDays<NUM_OF_WORKING_DAYS)
              {   totalWorkingDays++;
                double empCheck=Math.floor(Math.random()*10)%3;
                switch((int)empCheck)
                {
                    case IS_FULL_TIME:
                             empHrs=8;
                             break;
                    case IS_PART_TIME:
                             empHrs=4;
                             break;
                    default:
                             empHrs=0;
                }
                         totalEmpHrs+=empHrs;
                        empWage=EMP_RATE_PER_HR*empHrs;
                        totalEmpWage+=empWage;
                        System.out.println("Employee wage for day " +totalWorkingDays+" is : "+empWage);
            }
                        System.out.println("Employee wage " + totalEmpWage);


     }
}
