/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.util.Scanner;

public class aldi {
   public static void main (String args[])
   {
    Scanner input=new Scanner(System.in);
    System.out.print("Masukan Jumlah Mahasiswa : ");
    int n=input.nextInt();
    String nama[]=new String[n];
    String status[]=new String[n];
    int nilai[]=new int[n];
    for (int i=0;i<n;i++){
         System.out.println("Mahasiswa Ke : "+(i+1));
        System.out.print("Nama : ");
        nama[i]=input.next();

        System.out.print("Nilai : ");
        nilai[i]=input.nextInt();

        if (nilai[i]<=50) {
                status[i]="Tidak Lulus";
            } else {
                status[i]="Lulus";
            }
    }
    System.out.println("DAFTAR NILAI MAHASISWA");
    System.out.println("======================");
    System.out.println("No   Nama   Nilai   Status  ");
    for (int i=0; i<n;i++) {
        System.out.println((i+1)+"    "+nama[i]+"     "+nilai[i]+"       "+status[i]);
    }    
    }
 }    

