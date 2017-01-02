/*
 Enter your code here. Read input from STDIN. Print output to STDOUT
 Your class should be named Solution
*/
import java.io.*;
import java.util.Scanner;
public class Solution {
public static void main(String[] args) {
 Scanner scanner;
 scanner = new Scanner(System.in);
 int t = scanner.nextInt();
String[] p = new String[t];
 String[] v = new String[t];
    for (int i = 0; i < t; i++) 
{
	p[i] = scanner.next();
	v[i] = scanner.next();
        System.out.println();
}
    try
 {
 /*BufferedReader i = new BufferedReader(new InputStreamReader(System.in));
 t=Integer.parseInt(i.readLine());   
 String[] p = new String[t];
 String[] v = new String[t];
  for(int ii=0;ii<t;ii++)
 {
 System.out.println();
 p[ii]=i.readLine();
 v[ii]=i.readLine();
 }
*/
 for(int ij=0;ij<t;ij++)
    {
        int check=0;
        int um=0;        //um -> unmatched character flag
        char hfoot[]= p[ij].toCharArray(); 
        char virus[]= v[ij].toCharArray(); 
        for(int ik=0;ik<=(hfoot.length-virus.length);ik++)
        { 
            check=0;
            um=0;
            int ikt;
            ikt=ik;
            for(int vi=0;vi<virus.length;vi++,ikt++)
            {
                
                if(hfoot[ikt]==virus[vi])
                {
                    check++;
                }
                else if(hfoot[ikt]!=virus[vi]&&um==0)
                {
                    um=1;
                    check++;
                }
            }
            if(check==virus.length)
            {
               System.out.print(ik+" ");                 
             }
        }
        
        System.out.println();
    }
 }
 catch(Exception e)
 {
     System.err.println( e.getMessage());
 }
}
}