public class EmpWageComputationMultiCompany
{
        public static final int IS_PART_TIME=1;
        public static final int IS_FULL_TIME=2;
     public static int computeEmpWage(String company, int empRatePerHr,int numOfWorkingDays,int maxHrsPerMonth)
      {
         System.out.println("WELCOME TO EMPLOYEE WAGE COMPUTATION PROGRAM");
        int empHrs=0,totalEmpHrs=0,totalWorkingDays=0;

         while(totalEmpHrs<=maxHrsPerMonth && totalWorkingDays<numOfWorkingDays)
                {
                totalWorkingDays++;
                double empCheck=Math.floor(Math.random()*10)%3;
                switch((int)empCheck)
                 {
                case IS_PART_TIME:
                         empHrs=4;
                         break;
                case IS_FULL_TIME:
                        empHrs=8;
                        break;
                default:
                        empHrs=0;
                }
               totalEmpHrs+=empHrs;
                System.out.println("Day#: "+ totalWorkingDays + " Emp hr : "+empHrs);
               }
           int totalEmpWage = totalEmpHrs*empRatePerHr;
           System.out.println("Total Emp Wage for Company: "+company+ " is : "+totalEmpWage);
           return totalEmpWage;
       }

        public static void main(String[] args)
        {
         computeEmpWage("TCS",50,15,100);
         computeEmpWage("INFOSYS",60,20,80);
        }
}





