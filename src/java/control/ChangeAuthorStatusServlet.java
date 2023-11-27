/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package control;

import dao.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author MSI
 */
@WebServlet(name="ChangeAuthorStatusServlet", urlPatterns={"/changeAuthorStatus"})
public class ChangeAuthorStatusServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String aArrStr = request.getParameter("aArr");
        String dArrStr = request.getParameter("dArr");
        
        String[] aArrStrArray = aArrStr.split(",");
        String[] dArrStrArray = dArrStr.split(",");

        
        int[] aArr = new int[aArrStrArray.length];
        int[] dArr = new int[dArrStrArray.length];
        
        for (int i = 0; i < aArrStrArray.length; i++) {
            if (!aArrStrArray[i].isEmpty()) {
                aArr[i] = Integer.parseInt(aArrStrArray[i]);
            } else {
                aArr = null;
            }
        }
        
        for (int i = 0; i < dArrStrArray.length; i++) {
            if (!dArrStrArray[i].isEmpty()) {
                dArr[i] = Integer.parseInt(dArrStrArray[i]);
            } else {
                dArr = null;
            }
        }
        
        DAO dao = new DAO();
        if (aArr != null) {
            for (int i : aArr) {
                dao.setAuthorToAllowedByID(i);
            }
        }
        
        if (dArr != null) {
            for (int i : dArr) {
                dao.setAuthorToDeniedByID(i);
            }
        }
        
        request.getRequestDispatcher("manageAuthor").forward(request, response);
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
