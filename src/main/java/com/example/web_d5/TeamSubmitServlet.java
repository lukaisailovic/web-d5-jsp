package com.example.web_d5;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "teamSubmitServlet", value = "/team-submit")
public class TeamSubmitServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try{
            String path = getServletContext().getRealPath("submissions");
            String fileName = path+"/tim_"+req.getParameter("ime")+"_"+System.currentTimeMillis()+".txt";
            PrintWriter writer = new PrintWriter(fileName);
            writer.println("PODACI O TIMU");
            writer.println("Ime: "+req.getParameter("ime"));
            writer.println("Email: "+req.getParameter("email"));
            writer.println("Telefon: "+req.getParameter("tel"));
            writer.println("Moto: "+req.getParameter("moto"));
            writer.println("Odakle ste culi za hakaton: "+req.getParameter("source"));
            writer.println("Broj clanova tima: "+req.getParameter("membercount"));


            String[] clanovi_ime = req.getParameterValues("clanovi_ime");
            String[] clanovi_prezime = req.getParameterValues("clanovi_prezime");
            String[] clanovi_email = req.getParameterValues("clanovi_email");
            String[] clanovi_brucesca = req.getParameterValues("clanovi_brucesca");
            String[] clanovi_uloga = req.getParameterValues("clanovi_uloga");
            String[] clanovi_ln = req.getParameterValues("clanovi_ln");
            writer.println("");
            writer.println("---------------------------------------");
            writer.println("");
            int count = Integer.parseInt(req.getParameter("membercount"));
            for (int i = 0; i < count; i++){
                writer.println("");
                writer.println("Clan tima "+(i+1));
                writer.println("Ime: "+ clanovi_ime[i]);
                writer.println("Prezime: "+ clanovi_prezime[i]);
                writer.println("Email: "+ clanovi_email[i]);
                writer.println("Broj ucesca na hakatonima: "+ clanovi_brucesca[i]);
                writer.println("Uloga: "+ clanovi_uloga[i]);
                writer.println("Linkedin: "+ clanovi_ln[i]);
                writer.println("");
            }

            writer.close();
        } catch (Exception e){
            System.out.println(e);
        }

    }
}
