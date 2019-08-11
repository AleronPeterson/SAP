request/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
public class SAP5 extends HttpServlet {

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
               response.setContentType("text/html");
           server_SAP5 ap=new server_SAP5();
           Connection con=ap.getCon();
         PreparedStatement ps=con.prepareStatement("select*from sports");
         ResultSet rs=ps.executeQuery();
          RequestDispatcher rd=request.getRequestDispatcher("SAP7.jsp");
          rd.include(request, response);
        out.println("<script>");
         out.println("alert('DATA DISPLAYED!!!');");
          out.println("</script>");
        
         out.println("<table border=5 align=center style=color:white><tr><th>object</th><th>brand</th><th>price</th><th>description</th></tr>");
         while(rs.next()){
             out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td></tr>");
            
                               
         }
         out.println("</table>");
        } catch (SQLException ex) { 
            Logger.getLogger(SAP5.class.getName()).log(Level.SEVERE, null, ex);
        }}}
    

  