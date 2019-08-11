/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author abc
 */
public class SAP4 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String uname=request.getParameter("uname");
            String psw=request.getParameter("psw");
           String re=request.getParameter("re");
            SAP4_server ap=new SAP4_server();
            Connection con=ap.getCon();
         if(psw == null ? re == null : psw.equals(re)){
                Statement stmt=con.createStatement();
                stmt.executeUpdate("insert into login (uname,psw) values('"+uname+"','"+psw+"')");
                 
                 RequestDispatcher rd=request.getRequestDispatcher("SAP4.jsp");
                 rd.include(request, response);
                 out.println("<script>");
          out.println("alert('successfully registered!!! please return to login page to sign up')");
          out.println("</script>");
            }else{
             
             
             RequestDispatcher rd=request.getRequestDispatcher("SAP4.jsp");
                 rd.include(request, response);
                 out.println("<script>");
             out.println("alert('PLEASE MATCH PASSWORD AND CONFIRM PASSWORD!!!')");
             out.println("</script>");
         }
     
    }   catch (SQLException ex) {
            Logger.getLogger(SAP4.class.getName()).log(Level.SEVERE, null, ex);
        }}}

  


