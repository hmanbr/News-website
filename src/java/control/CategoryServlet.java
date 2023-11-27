package control;

import dao.DAO;
import entity.Article;
import entity.Author;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 *
 * @author MSI
 */
@WebServlet(name = "CategoryServlet", urlPatterns = {"/category"})
public class CategoryServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String indexPage = request.getParameter("index");
        if (indexPage == null) {
            indexPage = "1";
        }
        DAO dao = new DAO();
        int index = Integer.parseInt(indexPage);
        int endPage = getEndPageLifestyle();
        request.setAttribute("endPage", endPage);
//        int endPage = getEndPage();
//        int endPageLifestyle = getEndPageLifestyle();
//        int endPageShowbiz = getEndPageShowbiz();
//        int endPageHealth = getEndPageHealth();
//        int endPageSport = getEndPageSport();
//        int endPageTechnology = getEndPageTechnology();
//        

//        request.setAttribute("endPageLifestyle", endPageLifestyle);
//        request.setAttribute("endPageShowbiz", endPageShowbiz);
//        request.setAttribute("endPageHealth", endPageHealth);
//        request.setAttribute("endPageSport", endPageSport);
//        request.setAttribute("endPageTechnology", endPageTechnology);
        List<Article> pagingArticle = dao.pagingArticle(index);
        List<Article> pagingLifestyleArticle = dao.pagingLifestyleArticle(index);
        List<Article> pagingShowbizArticle = dao.pagingShowbizArticle(index);
        List<Article> pagingHealthArticle = dao.pagingHealthArticle(index);
        List<Article> pagingSportArticle = dao.pagingSportArticle(index);
        List<Article> pagingTechnologyArticle = dao.pagingTechnologyArticle(index);
        List<Author> authorList = dao.getAllAuthor();

        request.setAttribute("authorList", authorList);
        request.setAttribute("pagingArticle", pagingArticle);
        request.setAttribute("pagingLifestyleArticle", pagingLifestyleArticle);
        request.setAttribute("pagingShowbizArticle", pagingShowbizArticle);
        request.setAttribute("pagingHealthArticle", pagingHealthArticle);
        request.setAttribute("pagingSportArticle", pagingSportArticle);
        request.setAttribute("pagingTechnologyArticle", pagingTechnologyArticle);

        request.setAttribute("tag", index);
        request.getRequestDispatcher("category.jsp").forward(request, response);
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
        String activeTab = request.getParameter("activeTab");
        String endPage = request.getParameter("endPage");
        int newEndPage = Integer.parseInt(endPage);

        if (activeTab != null) {
            if (activeTab.equals("#nav-profile")) {
                newEndPage = getEndPageLifestyle();
            } else if (activeTab.equals("#nav-home")) {
                newEndPage = getEndPageShowbiz();
            } else if (activeTab.equals("#nav-contact")) {
                newEndPage = getEndPageHealth();
            } else if (activeTab.equals("#nav-last")) {
                newEndPage = getEndPageSport();
            } else if (activeTab.equals("#nav-Sports")) {
                newEndPage = getEndPageTechnology();
            }
        }
        PrintWriter out = response.getWriter();
        out.println(" <c:forEach begin=\"1\" end=\""+newEndPage+"\" var=\"i\">\n"
                + "                                                <c:set var=\"currentPage\" value=\"${i}\" />\n"
                + "                                                <c:set var=\"currentPageClass\" value=\"${currentPage == tag ? 'active' : ''}\" />\n"
                + "\n"
                + "                                                <li class=\"page-item ${currentPageClass}\">\n"
                + "                                                    <a class=\"page-link\" href=\"category?index=${i}\">${i}</a>\n"
                + "                                                </li>\n"
                + "                                            </c:forEach>");
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

    private int getEndPage() {
        DAO dao = new DAO();
        int count = dao.getTotalArticle();
        int endPage = count / 6;
        if (count % 6 != 0) {
            endPage++;
        }
        return endPage;
    }

    private int getEndPageLifestyle() {
        DAO dao = new DAO();
        int count = dao.getTotalLifestyleArticle();
        int endPage = count / 6;
        if (count % 6 != 0) {
            endPage++;
        }
        return endPage;
    }

    private int getEndPageShowbiz() {
        DAO dao = new DAO();
        int count = dao.getTotalShowbizArticle();
        int endPage = count / 6;
        if (count % 6 != 0) {
            endPage++;
        }
        return endPage;
    }

    private int getEndPageHealth() {
        DAO dao = new DAO();
        int count = dao.getTotalHealthArticle();
        int endPage = count / 6;
        if (count % 6 != 0) {
            endPage++;
        }
        return endPage;
    }

    private int getEndPageSport() {
        DAO dao = new DAO();
        int count = dao.getTotalSportArticle();
        int endPage = count / 6;
        if (count % 6 != 0) {
            endPage++;
        }
        return endPage;
    }

    private int getEndPageTechnology() {
        DAO dao = new DAO();
        int count = dao.getTotalTechnologyArticle();
        int endPage = count / 6;
        if (count % 6 != 0) {
            endPage++;
        }
        return endPage;
    }

}
