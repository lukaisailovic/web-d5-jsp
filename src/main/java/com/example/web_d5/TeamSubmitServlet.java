package com.example.web_d5;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

@WebServlet(name = "teamSubmitServlet", value = "/team-submit")
public class TeamSubmitServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path = getServletContext().getRealPath("submissions");
        String fileName = path+"/tim_"+req.getParameter("ime")+"_"+System.currentTimeMillis()+".txt";
        FileWriter writer = new FileWriter(fileName);
        writer.close();

    }
}
