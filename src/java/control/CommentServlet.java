/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.DAO;
import entity.Comment;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.time.LocalDate;
import java.util.List;

/**
 *
 * @author MSI
 */
@WebServlet(name = "CommentServlet", urlPatterns = {"/comment"})
public class CommentServlet extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        DAO dao = new DAO();
        
        
        String amount = request.getParameter("exits");
        String id = request.getParameter("id");
        int iamount = Integer.parseInt(amount);
        int article_id = Integer.parseInt(id);
        List<Comment> list = dao.getNext3CommentByID(iamount, article_id);
        for (Comment c : list) {
            out.println("<div class=\"comment-list\">\n"
                    + "                                    <div class=\"single-comment justify-content-between d-flex\">\n"
                    + "                                        <div class=\"user justify-content-between d-flex\">\n"
                    + "                                            <div class=\"thumb\">\n"
                    + "                                                <img src=\"assets/img/comment/comment_1.png\" alt=\"\">\n"
                    + "                                            </div>\n"
                    + "                                            <div class=\"desc\">\n"
                    + "                                                <p class=\"comment\">\n"
                    + "                                                    " + c.getMessage() + "\n"
                    + "                                                </p>\n"
                    + "                                                <div class=\"d-flex justify-content-between\">\n"
                    + "                                                    <div class=\"d-flex align-items-center\">\n"
                    + "                                                        <h5>\n"
                    + "                                                            <a>"+ c.getName() +"</a>\n"
                    + "                                                        </h5>\n"
                    + "                                                        <p class=\"date\">"+ c.getDate() +" </p>\n"
                    + "                                                    </div>\n"
                    + "                                                    \n"
                    + "                                                </div>\n"
                    + "                                            </div>\n"
                    + "                                        </div>\n"
                    + "                                    </div>\n"
                    + "                                </div>"
            );

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
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
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        DAO dao = new DAO();
        
        
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String message = request.getParameter("message");
        String email = request.getParameter("email");
        int article_id = Integer.parseInt(id);
        LocalDate date = LocalDate.now();
        
        dao.saveComment(new Comment(article_id, name, message, email, date));
        
        out.println();
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
