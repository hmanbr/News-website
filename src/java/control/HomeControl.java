/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package control;

import dao.DAO;
import entity.Article;
import entity.Author;
import entity.Video;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;


/**
 *
 * @author MSI
 */
public class HomeControl extends HttpServlet {
   
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
        //get data from dao
        DAO dao = new DAO();
        List<Article> articleList = dao.getAllArticle();
        List<Article> sortedArticleList = dao.getAllArticleByDate();
        List<Article> lifestyleArticleList = dao.getAllLifestyleArticle();
        List<Article> sportArticleList = dao.getAllSportArticle();
        List<Article> healthArticleList = dao.getAllHealthArticle();
        List<Article> showbizArticleList = dao.getAllShowbizArticle();
        List<Article> technologyArticleList = dao.getAllTechnologyArticle();
        
        
        List<Author> authorList = dao.getAllAuthor();
        
        List<Video> videoList =  dao.getAllVideo();
         
        
        //set data to jsp
        request.setAttribute("articleList", articleList);
        request.setAttribute("sortedArticleList", sortedArticleList);
        request.setAttribute("lifestyleArticleList", lifestyleArticleList);
        request.setAttribute("sportArticleList", sportArticleList);
        request.setAttribute("healthArticleList", healthArticleList);
        request.setAttribute("showbizArticleList", showbizArticleList);
        request.setAttribute("technologyArticleList", technologyArticleList);
        
        request.setAttribute("authorList", authorList);
        request.setAttribute("videoList", videoList);
        request.getRequestDispatcher("index.jsp").forward(request, response);
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
