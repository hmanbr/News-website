package dao;

import context.DBContext;
import entity.Article;
import entity.Author;
import entity.Comment;
import entity.TopAuthor;
import entity.Video;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.sql.SQLException;

public class DAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    
    
    public void insertNewArticle(String title, String content, int author_id, String category, String image) {
        String query = "INSERT INTO Article_HE172293 (title, content, date, author_id, category, image, status)\n"
                + "VALUES (?, ?, GETDATE(), ?, ?, ?, 'pending');";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, title);
            ps.setString(2, content);
            ps.setInt(3, author_id);
            ps.setString(4, category);
            ps.setString(5, image);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }


    public List<String> getAllDistinctCategories() {
        List<String> list = new ArrayList<>();
        String query = "SELECT DISTINCT category\n"
                + "from Article_HE172293;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(rs.getString("category"));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void setAuthorToDeniedByID(int id) {
        String query = "UPDATE Author_HE172293\n"
                + "SET status = 0\n"
                + "WHERE ID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void setAuthorToAllowedByID(int id) {
        String query = "UPDATE Author_HE172293\n"
                + "SET status = 1\n"
                + "WHERE ID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteArticleByID(int id) {
        String query = "DELETE from Article_HE172293\n"
                + "WHERE ID = ?;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public List<TopAuthor> getTop5Authors() {
        List<TopAuthor> list = new ArrayList<>();
        String query = "SELECT TOP 5 A.image AS image, A.name AS AuthorName, COUNT(*) AS ApprovedArticleCount\n"
                + "from Author_HE172293 A\n"
                + "JOIN Article_HE172293 Ar ON A.id = Ar.author_id\n"
                + "WHERE Ar.status = 'approved'\n"
                + "GROUP BY A.image, A.id, A.name\n"
                + "ORDER BY ApprovedArticleCount DESC;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {

                list.add(new TopAuthor(
                        rs.getString("image"),
                        rs.getString("AuthorName"),
                        rs.getInt("ApprovedArticleCount")));
            }
        } catch (Exception e) {
        }

        return list;
    }

    public void setArticleToPendingByID(int id) {
        String query = "UPDATE Article_HE172293\n"
                + "SET Status = 'pending'\n"
                + "WHERE ID = ?;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void setArticleToRejectedByID(int id) {
        String query = "UPDATE Article_HE172293\n"
                + "SET Status = 'rejected'\n"
                + "WHERE ID = ?;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void setArticleToApprovedByID(int id) {
        String query = "UPDATE Article_HE172293\n"
                + "SET Status = 'approved'\n"
                + "WHERE ID = ?;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public List<Article> getAllRejectedArticles() {
        List<Article> list = new ArrayList<>();
        String query = "select * from Article_HE172293\n"
                + "Where Status = 'rejected'";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Article(
                        rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("content"),
                        rs.getDate("date").toLocalDate(),
                        rs.getInt("author_id"),
                        rs.getString("category"),
                        rs.getString("image"),
                        rs.getString("status")));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Article> getAllApprovedArticles() {
        List<Article> list = new ArrayList<>();
        String query = "select * from Article_HE172293\n"
                + "Where Status = 'approved'";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Article(
                        rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("content"),
                        rs.getDate("date").toLocalDate(),
                        rs.getInt("author_id"),
                        rs.getString("category"),
                        rs.getString("image"),
                        rs.getString("status")));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Article> getAllPendingArticles() {
        List<Article> list = new ArrayList<>();
        String query = "select * from Article_HE172293\n"
                + "Where Status = 'pending'";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Article(
                        rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("content"),
                        rs.getDate("date").toLocalDate(),
                        rs.getInt("author_id"),
                        rs.getString("category"),
                        rs.getString("image"),
                        rs.getString("status")));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Article> getPendingArticlesByAuthorID(int id) {
        List<Article> list = new ArrayList<>();
        String query = "select * from Article_HE172293\n"
                + "Where author_id = ? and Status = 'pending'";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Article(
                        rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("content"),
                        rs.getDate("date").toLocalDate(),
                        rs.getInt("author_id"),
                        rs.getString("category"),
                        rs.getString("image"),
                        rs.getString("status")));
            }

        } catch (Exception e) {
        }
        return list;
    }

    public Author getAuthorByID(int id) {
        String query = "Select * from Author_HE172293\n"
                + "where id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Author(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("email"),
                        rs.getBoolean("status"),
                        rs.getString("image"));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<Article> getThisWeekArticles() {
        List<Article> list = new ArrayList<>();
        String query = "SELECT *\n"
                + "from Article_HE172293\n"
                + "WHERE DATEPART(YEAR, date) = DATEPART(YEAR, GETDATE())\n"
                + "AND DATEPART(WEEK, date) = DATEPART(WEEK, GETDATE());";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {

                list.add(new Article(
                        rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("content"),
                        rs.getDate("date").toLocalDate(),
                        rs.getInt("author_id"),
                        rs.getString("category"),
                        rs.getString("image"),
                        rs.getString("status")));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Article> getRejectedArticles() {
        List<Article> list = new ArrayList<>();
        String query = "SELECT *\n"
                + "from Article_HE172293\n"
                + "WHERE Status = 'rejected';";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {

                list.add(new Article(
                        rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("content"),
                        rs.getDate("date").toLocalDate(),
                        rs.getInt("author_id"),
                        rs.getString("category"),
                        rs.getString("image"),
                        rs.getString("status")));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Article> getApprovedArticles() {
        List<Article> list = new ArrayList<>();
        String query = "SELECT *\n"
                + "from Article_HE172293\n"
                + "WHERE Status = 'approved';";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {

                list.add(new Article(
                        rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("content"),
                        rs.getDate("date").toLocalDate(),
                        rs.getInt("author_id"),
                        rs.getString("category"),
                        rs.getString("image"),
                        rs.getString("status")));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Article> getPendingArticles() {
        List<Article> list = new ArrayList<>();
        String query = "SELECT *\n"
                + "from Article_HE172293\n"
                + "WHERE Status = 'pending';";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {

                list.add(new Article(
                        rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("content"),
                        rs.getDate("date").toLocalDate(),
                        rs.getInt("author_id"),
                        rs.getString("category"),
                        rs.getString("image"),
                        rs.getString("status")));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Article> getTodayPendingArticles() {
        List<Article> list = new ArrayList<>();
        String query = "SELECT *\n"
                + "from Article_HE172293\n"
                + "WHERE CONVERT(DATE, date) = CONVERT(DATE, GETDATE()) And Status = 'pending';";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {

                list.add(new Article(
                        rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("content"),
                        rs.getDate("date").toLocalDate(),
                        rs.getInt("author_id"),
                        rs.getString("category"),
                        rs.getString("image"),
                        rs.getString("status")));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public int getAuthorCount() {
        String query = "SELECT COUNT(*) AS row_count\n"
                + "from Author_HE172293;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                return rs.getInt("row_count");
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public int getArticleCount() {
        String query = "SELECT COUNT(*) AS row_count\n"
                + "from Article_HE172293;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                return rs.getInt("row_count");
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public List<Comment> getTop3CommentByID(int id) {
        List<Comment> list = new ArrayList<>();
        String query = "Select top 3 * from Comment_HE172293 \n"
                + "Where article_id = ? \n"
                + "Order By date desc\n";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {

                list.add(new Comment(
                        rs.getInt("article_id"),
                        rs.getString("name"),
                        rs.getString("message"),
                        rs.getString("email"),
                        rs.getDate("date").toLocalDate()));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Comment> getNext3CommentByID(int amount, int id) {
        List<Comment> list = new ArrayList<>();
        String query = "Select * from Comment_HE172293\n"
                + "Where article_id = ? \n"
                + "Order By date desc\n"
                + "Offset ? Rows\n"
                + "Fetch Next 3 row Only;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            ps.setInt(2, amount);
            rs = ps.executeQuery();
            while (rs.next()) {

                list.add(new Comment(
                        rs.getInt("article_id"),
                        rs.getString("name"),
                        rs.getString("message"),
                        rs.getString("email"),
                        rs.getDate("date").toLocalDate()));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Comment> getNext3Comment(int amount) {
        List<Comment> list = new ArrayList<>();
        String query = "Select * from Comment_HE172293\n"
                + "Order By date desc\n"
                + "Offset ? Rows\n"
                + "Fetch Next 3 row Only;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, amount);
            rs = ps.executeQuery();
            while (rs.next()) {

                list.add(new Comment(
                        rs.getInt("article_id"),
                        rs.getString("name"),
                        rs.getString("message"),
                        rs.getString("email"),
                        rs.getDate("date").toLocalDate()));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Comment> getTop3Comment() {
        List<Comment> list = new ArrayList<>();
        String query = "Select top 3 * from Comment_HE172293 \n"
                + "Order By date desc\n";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {

                list.add(new Comment(
                        rs.getInt("article_id"),
                        rs.getString("name"),
                        rs.getString("message"),
                        rs.getString("email"),
                        rs.getDate("date").toLocalDate()));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public boolean saveComment(Comment comment) {
        String query = "INSERT INTO Comment_HE172293 (article_id, name, message, email, date) VALUES (?, ?, ?, ?, ?)";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, comment.getArticle_id());
            ps.setString(2, comment.getName());
            ps.setString(3, comment.getMessage());
            ps.setString(4, comment.getEmail());
            // Convert LocalDate to java.sql.Date
            java.sql.Date sqlDate = java.sql.Date.valueOf(comment.getDate());
            ps.setDate(5, sqlDate);
            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0;
        } catch (Exception e) {
            return false;
        }
    }

    public int getTotalSearchResults(String textSearch) {
        String query = "Select count(*) From Article_HE172293 \n"
                + "WHERE [title] like ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + textSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }

        return 0;
    }

    public List<Article> searchByName(String textSearch) {
        List<Article> list = new ArrayList<>();
        String query = "Select * From Article_HE172293 \n"
                + "WHERE [title] like ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + textSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()) {

                list.add(new Article(
                        rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("content"),
                        rs.getDate("date").toLocalDate(),
                        rs.getInt("author_id"),
                        rs.getString("category"),
                        rs.getString("image"),
                        rs.getString("status")));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Comment> getAllComment() {
        List<Comment> list = new ArrayList<>();
        String query = "SELECT * FROM Comment_HE172293;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {

                list.add(new Comment(
                        rs.getInt("article_id"),
                        rs.getString("name"),
                        rs.getString("message"),
                        rs.getString("email"),
                        rs.getDate("date").toLocalDate()));
            }
        } catch (Exception e) {
        }

        return list;
    }

    public int getTotalTechnologyArticle() {
        String query = "SELECT count(*) from Article_HE172293 WHERE category = 'Technology';";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }

        return 0;
    }

    public int getTotalSportArticle() {
        String query = "SELECT count(*) from Article_HE172293 WHERE category = 'Sport';";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }

        return 0;
    }

    public int getTotalHealthArticle() {
        String query = "SELECT count(*) from Article_HE172293 WHERE category = 'Health';";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }

        return 0;
    }

    public int getTotalShowbizArticle() {
        String query = "SELECT count(*) from Article_HE172293 WHERE category = 'Showbiz';";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }

        return 0;
    }

    public int getTotalLifestyleArticle() {
        String query = "SELECT count(*) from Article_HE172293 WHERE category = 'Lifestyle';";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }

        return 0;
    }

    public int getTotalArticle() {
        String query = "SELECT count(*) from Article_HE172293;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }

        return 0;
    }

    public List<Article> pagingTechnologyArticle(int index) {
        List<Article> list = new ArrayList<>();
        String query = "Select * From Article_HE172293 WHERE category = 'Technology' \n"
                + "Order By id \n"
                + "Offset ? Rows Fetch Next 6 Rows Only;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1) * 6);
            rs = ps.executeQuery();
            while (rs.next()) {

                list.add(new Article(
                        rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("content"),
                        rs.getDate("date").toLocalDate(),
                        rs.getInt("author_id"),
                        rs.getString("category"),
                        rs.getString("image"),
                        rs.getString("status")));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Article> pagingSportArticle(int index) {
        List<Article> list = new ArrayList<>();
        String query = "Select * From Article_HE172293 WHERE category = 'Sport' \n"
                + "Order By id \n"
                + "Offset ? Rows Fetch Next 6 Rows Only;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1) * 6);
            rs = ps.executeQuery();
            while (rs.next()) {

                list.add(new Article(
                        rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("content"),
                        rs.getDate("date").toLocalDate(),
                        rs.getInt("author_id"),
                        rs.getString("category"),
                        rs.getString("image"),
                        rs.getString("status")));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Article> pagingHealthArticle(int index) {
        List<Article> list = new ArrayList<>();
        String query = "Select * From Article_HE172293 WHERE category = 'Health' \n"
                + "Order By id \n"
                + "Offset ? Rows Fetch Next 6 Rows Only;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1) * 6);
            rs = ps.executeQuery();
            while (rs.next()) {

                list.add(new Article(
                        rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("content"),
                        rs.getDate("date").toLocalDate(),
                        rs.getInt("author_id"),
                        rs.getString("category"),
                        rs.getString("image"),
                        rs.getString("status")));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Article> pagingShowbizArticle(int index) {
        List<Article> list = new ArrayList<>();
        String query = "Select * From Article_HE172293 WHERE category = 'Showbiz' \n"
                + "Order By id \n"
                + "Offset ? Rows Fetch Next 6 Rows Only;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1) * 6);
            rs = ps.executeQuery();
            while (rs.next()) {

                list.add(new Article(
                        rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("content"),
                        rs.getDate("date").toLocalDate(),
                        rs.getInt("author_id"),
                        rs.getString("category"),
                        rs.getString("image"),
                        rs.getString("status")));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Article> pagingLifestyleArticle(int index) {
        List<Article> list = new ArrayList<>();
        String query = "Select * From Article_HE172293 WHERE category = 'Lifestyle' \n"
                + "Order By id \n"
                + "Offset ? Rows Fetch Next 6 Rows Only;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1) * 6);
            rs = ps.executeQuery();
            while (rs.next()) {

                list.add(new Article(
                        rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("content"),
                        rs.getDate("date").toLocalDate(),
                        rs.getInt("author_id"),
                        rs.getString("category"),
                        rs.getString("image"),
                        rs.getString("status")));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Article> pagingArticle(int index) {
        List<Article> list = new ArrayList<>();
        String query = "Select * From Article_HE172293 \n"
                + "Order By id \n"
                + "Offset ? Rows Fetch Next 6 Rows Only;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1) * 6);
            rs = ps.executeQuery();
            while (rs.next()) {

                list.add(new Article(
                        rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("content"),
                        rs.getDate("date").toLocalDate(),
                        rs.getInt("author_id"),
                        rs.getString("category"),
                        rs.getString("image"),
                        rs.getString("status")));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Article> getAllArticle() {
        List<Article> list = new ArrayList<>();
        String query = "SELECT * from Article_HE172293;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {

                list.add(new Article(
                        rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("content"),
                        rs.getDate("date").toLocalDate(),
                        rs.getInt("author_id"),
                        rs.getString("category"),
                        rs.getString("image"),
                        rs.getString("status")));
            }
        } catch (Exception e) {
        }

        return list;
    }

    public Article getArticleByID(String id) {
        String query = "SELECT * from Article_HE172293\n" + "Where id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {

                return (new Article(
                        rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("content"),
                        rs.getDate("date").toLocalDate(),
                        rs.getInt("author_id"),
                        rs.getString("category"),
                        rs.getString("image"),
                        rs.getString("status")));
            }
        } catch (Exception e) {
        }

        return null;
    }

    public List<Article> getAllArticleByDate() {
        List<Article> list = new ArrayList<>();
        String query = "SELECT * from Article_HE172293 ORDER BY date DESC;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {

                list.add(new Article(
                        rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("content"),
                        rs.getDate("date").toLocalDate(),
                        rs.getInt("author_id"),
                        rs.getString("category"),
                        rs.getString("image"),
                        rs.getString("status")));
            }
        } catch (Exception e) {
        }

        return list;
    }

    public List<Article> getAllLifestyleArticle() {
        List<Article> list = new ArrayList<>();
        String query = "SELECT * from Article_HE172293 WHERE category = 'Lifestyle' ORDER BY date DESC;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {

                list.add(new Article(
                        rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("content"),
                        rs.getDate("date").toLocalDate(),
                        rs.getInt("author_id"),
                        rs.getString("category"),
                        rs.getString("image"),
                        rs.getString("status")));
            }
        } catch (Exception e) {
        }

        return list;
    }

    public List<Article> getAllShowbizArticle() {
        List<Article> list = new ArrayList<>();
        String query = "SELECT * from Article_HE172293 WHERE category = 'Showbiz' ORDER BY date DESC;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {

                list.add(new Article(
                        rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("content"),
                        rs.getDate("date").toLocalDate(),
                        rs.getInt("author_id"),
                        rs.getString("category"),
                        rs.getString("image"),
                        rs.getString("status")));
            }
        } catch (Exception e) {
        }

        return list;
    }

    public List<Article> getAllHealthArticle() {
        List<Article> list = new ArrayList<>();
        String query = "SELECT * from Article_HE172293 WHERE category = 'Health' ORDER BY date DESC;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {

                list.add(new Article(
                        rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("content"),
                        rs.getDate("date").toLocalDate(),
                        rs.getInt("author_id"),
                        rs.getString("category"),
                        rs.getString("image"),
                        rs.getString("status")));
            }
        } catch (Exception e) {
        }

        return list;
    }

    public List<Article> getAllSportArticle() {
        List<Article> list = new ArrayList<>();
        String query = "SELECT * from Article_HE172293 WHERE category = 'Sport' ORDER BY date DESC;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {

                list.add(new Article(
                        rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("content"),
                        rs.getDate("date").toLocalDate(),
                        rs.getInt("author_id"),
                        rs.getString("category"),
                        rs.getString("image"),
                        rs.getString("status")));
            }
        } catch (Exception e) {
        }

        return list;
    }

    public List<Article> getAllTechnologyArticle() {
        List<Article> list = new ArrayList<>();
        String query = "SELECT * from Article_HE172293 WHERE category = 'Technology' ORDER BY date DESC;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {

                list.add(new Article(
                        rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("content"),
                        rs.getDate("date").toLocalDate(),
                        rs.getInt("author_id"),
                        rs.getString("category"),
                        rs.getString("image"),
                        rs.getString("status")));
            }
        } catch (Exception e) {
        }

        return list;
    }

    public List<Author> getAllAuthor() {
        List<Author> list = new ArrayList<>();
        String query = "SELECT * from Author_HE172293;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {

                list.add(new Author(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("email"),
                        rs.getBoolean("status"),
                        rs.getString("image")));
            }
        } catch (Exception e) {
        }

        return list;
    }

    public List<Video> getAllVideo() {
        List<Video> list = new ArrayList<>();
        String query = "SELECT * from Video_HE172293;";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {

                list.add(new Video(
                        rs.getString("name"),
                        rs.getInt("id"),
                        rs.getString("link"),
                        rs.getString("category"),
                        rs.getString("image")));
            }
        } catch (Exception e) {
        }

        return list;
    }

    public static void main(String[] args) {
        DAO dao = new DAO();
        List<String> list = dao.getAllDistinctCategories();
        for (String o : list) {
            System.out.println(o);
        }
    }
}
