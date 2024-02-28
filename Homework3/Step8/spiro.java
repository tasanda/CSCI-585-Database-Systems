/*
https://github.com/Umanggala/Spatial-Database/blob/master/spiro.java
*/

import java.util.*;
import java.lang.*;
import java.io.*;

class spiro {
   public static void main(String args[]) {

      double R = 8.0;
      double r = 1.0;
      double a = 4.0;
      double x1 = R + r - a;
      double y1 = 0;

      double pie = Math.PI;
      int nReverse = 16;
      for(double t = 0.0; t < (pie*nReverse); t+=0.01) {
         double x2 = (R+r)*Math.cos((r/R)*t) - a*Math.cos((1+r/R)*t);
         double y2 = (R+r)*Math.sin((r/R)*t) - a*Math.sin((1+r/R)*t);
         x2 = x2/400;
         y2 = y2/400;
         //Tariq home coordinates
         double p1 = -122.2766163;
         double p2 = 37.8130267;
         System.out.print(x2+p1+",");
         System.out.println(y2+p2);
      }
   }
} 