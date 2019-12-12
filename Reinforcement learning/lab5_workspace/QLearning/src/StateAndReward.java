import java.util.Hashtable;

public class StateAndReward {

	private static final Hashtable<Integer, String> angleTable = new Hashtable<Integer, String>(){{
		put(0,"an00");
	    put(1,"an01");
	    put(2,"an02");
	    put(3,"an03");
	    put(4,"an04");
	    put(5,"an05");
	    put(6,"an06");	
	    put(7,"an07");
	}};
	private static final Hashtable<Integer, String> speedTable = new Hashtable<Integer, String>(){{
		put(0,"sp00");
	    put(1,"sp01");
	    put(2,"sp02");
	    put(3,"sp03");
	    put(4,"sp04");
	    put(5,"sp05");
	    put(6,"sp06");
	    put(7,"sp07");
	    put(8,"sp04");
	   
	}};
	/* State discretization function for the angle controller */
	public static String getStateAngle(double angle, double vx, double vy) {

		/* TODO: IMPLEMENT THIS FUNCTION */

		String vxstate = "";
		String vystate = ""; 
		String anglestate = "hello";
		Integer angle2 = (int) discretize(angle, 6, -3, 3);
		anglestate = angleTable.get(angle2);
		Integer vx2 = (int) discretize(vx, 6, -14, 14);
		vxstate = speedTable.get(vx2);
		if(anglestate == "an02") {
			Integer an3 = (int) discretize(angle, 4, -0.8, 0.8);
			anglestate = speedTable.get(an3);
		}
		//
		Integer vy2 = (int) discretize(vy, 6, -14, 14);
		vystate = speedTable.get(vy2);
		

		String state = anglestate+vystate+vxstate;
		return state;
	}

	/* Reward function for the angle controller */
	public static double getRewardAngle(double angle, double vx, double vy) {

		/* TODO: IMPLEMENT THIS FUNCTION */
		String okay = getStateAngle( angle,  vx,  vy);

		String strOut = okay.substring(0,4);

		double reward = 0;

 
		if(strOut.contentEquals("sp01")) {

			reward = reward + 1; 
			strOut = okay.substring(4,8);
			if(strOut.contentEquals("sp02")) {

				reward = reward+ 0.5; 
			}
			strOut = okay.substring(8,12);
			if(strOut.contentEquals("sp02")) {

				reward = reward+ 0.5; 
			}
			
		}
		else if(strOut.contentEquals("sp00")|| strOut.contentEquals("sp02")) {

			reward = reward + 0.5; 
		}

		return reward;
	}

	/* State discretization function for the full hover controller */
	public static String getStateHover(double angle, double vx, double vy) {

		/* TODO: IMPLEMENT THIS FUNCTION */
		

		String vxstate = "";
		String vystate = ""; 
		String anglestate = "hello";
		Integer angle2 = (int) discretize(angle, 6, -3, 3);
		anglestate = angleTable.get(angle2);
		Integer vx2 = (int) discretize(vx, 8, -14, 14);
		vxstate = speedTable.get(vx2);
		if(vxstate == "sp03") {
			Integer vx3 = (int) discretize(vx, 6, -2.2, 2.2);
			vxstate = angleTable.get(vx3);
		}
		Integer vy2 = (int) discretize(vy, 8, -14, 14);
		vystate = speedTable.get(vy2);
		if(vystate == "sp03") {
			Integer vy3 = (int) discretize(vy, 6, -2.2, 2.2);
			vystate = angleTable.get(vy3);
		}
		if(anglestate == "an02") {
			Integer an3 = (int) discretize(angle, 4, -0.8, 0.8);
			anglestate = speedTable.get(an3);
		}
		//
		
		String state = anglestate+vystate+vxstate;
		return state;
	}

	/* Reward function for the full hover controller */
	public static double getRewardHover(double angle, double vx, double vy) {

		String okay = getStateHover( angle,  vx,  vy);

		String strOut = okay.substring(8,12);

		double reward = 0;
		
		if(strOut.contentEquals("an02")) {

			reward = reward + 1; 
			strOut = okay.substring(4,8);
			if(strOut.contentEquals("an02")) {

				reward = reward+ 2; 
			}
			if(strOut.contentEquals("an01")||strOut.contentEquals("an03")) {

				reward = reward+ 0.5; 
			}
			
		}
		else if(strOut.contentEquals("an01")|| strOut.contentEquals("an03")) {

			reward = reward + 0.5; 
			strOut = okay.substring(4,8);
			if(strOut.contentEquals("an02")) {

				reward = reward+ 0.7; 
			}
			if(strOut.contentEquals("an01")||strOut.contentEquals("an03")) {

				reward = reward+ 0.2; 
			}
		}
		strOut = okay.substring(4,8);
		if(strOut.contentEquals("an02")) {

			reward = reward + 1; 
			strOut = okay.substring(8,12);
			if(strOut.contentEquals("an02")) {

				reward = reward+ 2; 
			}
			if(strOut.contentEquals("an01")||strOut.contentEquals("an03")) {

				reward = reward+ 0.5; 
			}
			
		}
		

		return reward;
	}

	// ///////////////////////////////////////////////////////////
	// discretize() performs a uniform discretization of the
	// value parameter.
	// It returns an integer between 0 and nrValues-1.
	// The min and max parameters are used to specify the interval
	// for the discretization.
	// If the value is lower than min, 0 is returned
	// If the value is higher than min, nrValues-1 is returned
	// otherwise a value between 1 and nrValues-2 is returned.
	//
	// Use discretize2() if you want a discretization method that does
	// not handle values lower than min and higher than max.
	// ///////////////////////////////////////////////////////////
	public static int discretize(double value, int nrValues, double min,
			double max) {
		if (nrValues < 2) {
			return 0;
		} 

		double diff = max - min;

		if (value < min) {
			return 0;
		}
		if (value > max) {
			return nrValues -1;
		}
		
		double tempValue = value - min;
		double ratio = tempValue / diff;


		return (int) (ratio * (nrValues - 2)) + 1;
	}

	// ///////////////////////////////////////////////////////////
	// discretize2() performs a uniform discretization of the
	// value parameter.
	// It returns an integer between 0 and nrValues-1.
	// The min and max parameters are used to specify the interval
	// for the discretization.
	// If the value is lower than min, 0 is returned
	// If the value is higher than min, nrValues-1 is returned
	// otherwise a value between 0 and nrValues-1 is returned.
	// ///////////////////////////////////////////////////////////
	public static int discretize2(double value, int nrValues, double min,
			double max) {
		double diff = max - min;

		if (value < min) {
			return 0;
		}
		if (value > max) {
			return nrValues - 1;
		}
							
		double tempValue = value - min;
		double ratio = tempValue / diff;

		return (int) (ratio * nrValues);
	}

}

//                 interpreting discretization function
//a = -0.7 => an-2
//a = 1.49 => an-1
//v(x,y) =  -0.46 => vx-1
//v(x,y) = 0.001 => vx-1 
//v(x,y) = -0.006 => vx-1
//v(x,y) = -0.059 => vx-0

// [-3,3], 5 states => an00 = [-3,-1.8], 
