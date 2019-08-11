/*
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
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author abc
 */
@WebServlet(urlPatterns = {"/SAP"})
public class SAP extends HttpServlet {/*
    */

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           server_SAP ap=new server_SAP();
            Connection con=ap.getCon();
           PreparedStatement ps=con.prepareStatement("select*from login where uname=? and psw=?");
      
            String uname=request.getParameter("uname");
             String psw=request.getParameter("psw");
               
            ps.setString (1, uname);
            ps.setString(2, psw);
                ResultSet rs=ps.executeQuery();
            if(rs.next()){
                RequestDispatcher rd=request.getRequestDispatcher("SAP1.jsp");
          rd.include(request, response);
                out.println("<script>");
               
                  out.println(" alert('WELCOME USER!!');");
           
                   out.println("</script>");
                
           
       
     
            }else{
               
                 RequestDispatcher rd=request.getRequestDispatcher("SAP.jsp");
                 rd.include(request, response);
                  out.println("<script>");
                 out.println("alert('!! INVALID USERNAME OR PASSWORD !!');");
                  out.println("</script>");
            }
            
    }   catch (SQLException ex) {
            Logger.getLogger(SAP.class.getName()).log(Level.SEVERE, null, ex);
        }

    }}
