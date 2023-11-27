/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.DAO;
import entity.Account;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDate;

/**
 *
 * @author MSI
 */
@MultipartConfig(maxFileSize = 1024 * 1300, maxRequestSize = 1024 * 1300)
@WebServlet(name = "SaveArticleServlet", urlPatterns = {"/saveArticle"})
public class SaveArticleServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession Session = request.getSession();
        Account a = (Account) Session.getAttribute("acc");
        int author_id = a.getAuthor_id();
        String title = request.getParameter("title");
        String category = request.getParameter("category");
        String content = request.getParameter("content");
        String image = "assets/myimage/crack.jpg";
        LocalDate currentDate = LocalDate.now();
        String status = "pending";
        
        DAO dao = new DAO();
        dao.insertNewArticle(title, content, author_id, category, image);
        
//        Part part = request.getPart("photo");
//
//        String realPath = request.getServletContext().getRealPath("/assets/myimage");
//
//        String submittedFileName = part.getSubmittedFileName();
//        String filename = Paths.get(submittedFileName).getFileName().toString();
//
//        if (!Files.exists(Paths.get(realPath))) {
//            Files.createDirectory(Paths.get(realPath));
//        }
//        
////        String writeLocation = realPath + "\\" + filename;
////        try {
////            part.write(writeLocation);
////        } catch (Exception e) {
////            e.printStackTrace();
////        }
////        request.setAttribute("realPath", realPath);
////        request.setAttribute("filename", filename);

        request.setAttribute("inserted", true);
            request.getRequestDispatcher("writeArticle").forward(request, response);
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
