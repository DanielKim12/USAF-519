Name: GUK IL KIM
USC ID#: 3020-8670-72

Q1. 
The equation to find MEDV:
MEDV = -0.1084 * CRIM + 0.0458 * ZN + 2.7187 * CHAS=1 - 17.376 * NOX + 3.8016 * RM - 1.4927 * DIS + 0.2996 * RAD - 0.0118 * TAX - 0.9465 * PTRATIO + 0.0093 * B - 0.5226 * LSTAT + 36.3411

The equation comprises a total of 12 terms, with the initial 11 terms representing a set of variables such as CRIM, ZN, and others. The final term, MEDV, serves as the dependent variable. The coefficients associated with the first 11 terms signify their respective weights. Notably, NOX and RM exert the most significant influence on the relationship based on these coefficients. The constant term, 36.3411, serves as the y-intercept in the context of the linear regression.


Q2.
The linear equation: 
num_rings = -0.8249 * sex=I + 0.0577 * sex=M - 0.4583 * length + 11.0751 * diameter + 10.7615 * height + 8.9754 * whole_weight - 19.7869 * shucked_weight - 10.5818 * viscera_weight + 8.7418 * shell_weight + 3.8946
I used AARF Reader and Linear Regression Learner to find the linear equation for the num_rings. 


Q3. 
Linear equation: 
num_rings = -11.933 * length + 25.766 * diameter + 20.358 * height + 2.836
(The linear regression to predict num_rings consisted these four parameters num_rings, length, diameter, height). I have used 5 different nodes: open file, read arff (to read shell.arff), set role (to set num_rings to be the label), select attributes (to select four parameters), linear regression (to get linear equation)to get prediction for num_rings. 

Q4. 
After running two libraries to install, I replaced all the given long, lats from geosphere and leaflet with the convex hall long, lat data points. Centroid found from geosphere used to mark hull centroid on the map by using c[1][1] and c[2][1] value, thus data sets are used to pin drum circles (convex hall).