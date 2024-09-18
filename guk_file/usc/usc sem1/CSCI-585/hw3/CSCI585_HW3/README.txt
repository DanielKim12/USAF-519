This is README for some clarifications. 
GUK IL KIM, CSCI 585

1. I went to 13 places on campus including my apartment to collect and observe long, lat. 
2. I inputted the collected long, lat onto the kml file in order to visualize it on google earth. 
3. For two queries (convexhall and nearest neighbours), I had trouble installing postgis extension on postgres, I have used neon.tech instead to run the queries and to get the right outputs. Thus I hardcoded the points onto the map values and used queries to get convex hall along with 4 nearest neighbours from my apartment. I combined all files into one kml file and splitted by using folder tags. 
4. OL.html, I replaced k1 tag with points and hardcoded long, lat. Thus I ised addMarker function to print out the points on the map. As I initialized x to contain long and y to contain lat, I called out a[indx].x and a[indx].y to print the points. 
5. Lastly, for spiro graph I had some issues with scaling that the graph would be displayed on globe scale but we wanted to print graph near tommy trojan. Thus I scaled down R, r, a by dividing the values by 10000. I was able to get the right spiro graph that is centering tommy trojan.

For submission clarification: 
1. All 13 selfies all stored under selfies folder. 
2. Location_convex_neighbor.kml file includes all 13 points of coordinates along with output from convex hall and 4 nearest neighbors from my apt. 
3. Under screenshots, it includes screenshots for two queries output, 13 points, and Spiro graph 
4. OL.html
5. Spiro.py includes the code to generate output for Spiro.kml coordinates 
6. Spiro.zip contains graph itself, was ran on acris, under screenshots have attached reference for it as well. 
