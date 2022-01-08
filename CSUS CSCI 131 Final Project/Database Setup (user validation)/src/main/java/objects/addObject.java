package objects;
 
import java.io.IOException;  
import java.io.PrintWriter;  
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import java.sql.*;  
import java.util.Iterator;  
import java.util.List;  
import javax.servlet.annotation.MultipartConfig;  
import org.apache.commons.fileupload.FileItem;  
import org.apache.commons.fileupload.FileItemFactory;  
import org.apache.commons.fileupload.disk.DiskFileItemFactory;  
import org.apache.commons.fileupload.servlet.ServletFileUpload;  
 
@MultipartConfig(location = "/tmp", fileSizeThreshold = 1024 * 1024,  
        maxFileSize = 1024 * 1024 * 5, maxRequestSize = 1024 * 1024 * 5 * 5)  
public class addObject extends HttpServlet {  
   
	private static final long serialVersionUID = 1L;
	/**
	 * 
	 */
	String name, add;  
    float salary;  
    FileItem flItem = null;  
    private String jdbcURL = "jdbc:mysql://localhost:3306/userdb?useSSL=false";
	private String jdbcUsername = "alkalm";         
	private String jdbcPassword = "alkalm";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
        response.setContentType("text/html;charset=UTF-8");  
        PrintWriter out = response.getWriter();  
        Connection con = null;  
        CallableStatement stat = null;  
        try {  
            long maxFileSize = (2 * 1024 * 1024);  
            int maxMemSize = (2 * 1024 * 1024);   
            boolean isMultiPart = ServletFileUpload.isMultipartContent(request);  
            if (isMultiPart) {  
                FileItemFactory factory = new DiskFileItemFactory();  
                ServletFileUpload upload = new ServletFileUpload(factory);  
                List<FileItem> items = upload.parseRequest(request);  
                Iterator<FileItem> iter = items.iterator();  
                while (iter.hasNext()) {  
                    FileItem fileItem = iter.next();  
                    if (fileItem.isFormField()) {  
                        processFormField(fileItem);  
                    } else {  
                        flItem = fileItem;  
                    }  
                }  
                Class.forName("com.mysql.jdbc.Driver");  
                con = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);  
                stat = con.prepareCall("{call prc_AddEmployee(?,?)}");  
                stat.setString(1, name);   
                stat.setBinaryStream(2, flItem.getInputStream(), (int) flItem.getSize());    
                int rows = stat.executeUpdate();  
                if (rows > 0) {  
                    response.sendRedirect("Index.jsp");  
                } else {  
                    out.println("<html>");  
                    out.println("<head>");  
                    out.println("<title>Error Adding Object</title>");  
                    out.println("</head>");  
                    out.println("<body>");  
                    out.println("<h2>Error Adding Object Data</h2>");  
                    out.println("</body>");  
                    out.println("</html>");  
                }  
            }  
        } catch (Exception ex) {  
            out.println(ex.getMessage());  
        } finally {  
            try {  
                con.close();  
                stat.close();  
                out.close();  
            } catch (Exception ex) {  
                out.println(ex.getMessage());  
            }  
        }  
    }    
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
    private void processFormField(FileItem item) {  
        if (item.getFieldName().equals("txtName")) {  
            name = item.getString();  
        }  
    }  
   
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
    }
}