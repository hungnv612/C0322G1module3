import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "SumServlet",urlPatterns = "/sum")
public class SumServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("method doPost");
        int num1 = Integer.parseInt(request.getParameter("n1"));
        int num2 = Integer.parseInt(request.getParameter("n2"));
        int sum = num1+num2;
        // cách 1:
//        PrintWriter printWriter = response.getWriter();
//        printWriter.print("<h1>Kết quả là" + sum+ "<h1>");
        // cách 2

        request.setAttribute("ketQua",sum);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
        requestDispatcher.forward(request,response);
//        response.sendRedirect("index.jsp");
    }

    @Override
    public void init() throws ServletException {
        System.out.println(" severt đc khởi tạo thành công");
    }

    @Override
    public void destroy() {
        System.out.println("servlet bị phá hủy");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
