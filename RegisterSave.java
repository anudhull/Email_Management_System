import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 
@WebServlet(name = "RegisterSave", urlPatterns = {"/RegisterSave"})
public class RegisterSave extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        Connection con;
        PreparedStatement pstm;
        String a,b,c,d,e;
        a=request.getParameter("a");
            b=request.getParameter("b");
            c=request.getParameter("c");
            d=request.getParameter("d");
            e=request.getParameter("e");
        try {
            
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/EmailDB","root","dhullanu");
            pstm=con.prepareStatement("insert into Users values(?,?,?,?,?)");
            pstm.setString(1,a);
            pstm.setString(2,b);
            pstm.setString(3,c);
            pstm.setString(4,d);
            pstm.setString(5,e);
            pstm.executeUpdate();
            out.println("<div style='padding:100px 100px 50px 200px; background-color:#80ffbf; color:#9900cc;'><h2 align=center>You have successfully registered</h2></div><center><img src='smile.png'/>");
            con.close();
        } 
        catch(Exception f)
            
        {
            out.println(f.toString());
        }
    
    }
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
 
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
