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
public class SAP1 extends HttpServlet {

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
           String object=request.getParameter("object");
            String brand=request.getParameter("brand");
            String price=request.getParameter("price");
            String description=request.getParameter("description");
            server_SAP1 ap=new server_SAP1();
            Connection con=ap.getCon();
            Statement stmt=con.createStatement();
                      
            stmt.executeUpdate("insert into sports (object,brand,price,description) values('"+object+"','"+brand+"','"+price+"','"+description+"');");
          
        RequestDispatcher rd=request.getRequestDispatcher("SAP1.jsp");
          rd.include(request, response);
         
            out.println("<script>");
                out.println("alert('Data saved successfully!!')");
                out.println("</script>");
          
       
     
        } catch (SQLException ex) {
            Logger.getLogger(SAP1.class.getName()).log(Level.SEVERE, null, ex);
        }}}
        
    

  
