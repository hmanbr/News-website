/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.DAO;
import entity.Account;
import entity.Article;
import entity.Author;
import entity.TopAuthor;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;

/**
 *
 * @author MSI
 */
@WebServlet(name = "ManageServlet", urlPatterns = {"/manage"})
public class ManageServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession Session = request.getSession();
        Account a = (Account) Session.getAttribute("acc");
        DAO dao = new DAO();
        int author_id = a.getAuthor_id();
            Author author = dao.getAuthorByID(author_id);
        if (a.getRole() == 0) {
            
            int totalArticle = dao.getArticleCount();
            int totalAuthor = dao.getAuthorCount();
            List<Article> todayPendingArticles = dao.getTodayPendingArticles();
            List<Article> thisWeekArticles = dao.getThisWeekArticles();
            List<Author> authorList = dao.getAllAuthor();
            
            
            
            List<TopAuthor> topAuthorsList = dao.getTop5Authors();
            
            request.setAttribute("role", "Admin");
            request.setAttribute("accountName", a.getUsername());
            request.setAttribute("author", author);
            request.setAttribute("topAuthorsList", topAuthorsList);
            request.setAttribute("authorList", authorList);
            request.setAttribute("thisWeekArticles", thisWeekArticles);
            request.setAttribute("todayPendingArticles", todayPendingArticles);
            request.setAttribute("totalArticle", totalArticle);
            request.setAttribute("totalAuthor", totalAuthor);

            request.getRequestDispatcher("manage_admin.jsp").forward(request, response);
        } else{
            
            int totalArticle = dao.getArticleCount();
            int totalAuthor = dao.getAuthorCount();
            List<Article> todayPendingArticles = dao.getTodayPendingArticles();
            List<Article> thisWeekArticles = dao.getThisWeekArticles();
            List<Author> authorList = dao.getAllAuthor();

            
            List<TopAuthor> topAuthorsList = dao.getTop5Authors();
            
            request.setAttribute("role", "Writer");
            request.setAttribute("accountName", a.getUsername());
            request.setAttribute("author", author);
            request.setAttribute("topAuthorsList", topAuthorsList);
            request.setAttribute("authorList", authorList);
            request.setAttribute("thisWeekArticles", thisWeekArticles);
            request.setAttribute("todayPendingArticles", todayPendingArticles);
            request.setAttribute("totalArticle", totalArticle);
            request.setAttribute("totalAuthor", totalAuthor);

            request.getRequestDispatcher("manage_user_author.jsp").forward(request, response);
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
        processRequest(request, response);
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
