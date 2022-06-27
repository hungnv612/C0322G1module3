import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "product_discount_calculator", value = "/product")
public class product_discount_calculator extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name =request.getParameter("name");
        float price = Float.parseFloat(request.getParameter("price"));
        float discount = Float.parseFloat(request.getParameter("discount"));
        float amount = price * (discount /100);
        float cost = price -amount;
        request.setAttribute("name",name);
        request.setAttribute("price",price);
        request.setAttribute("discount",discount);
        request.setAttribute("amount",amount);
        request.setAttribute("cost",cost);


        RequestDispatcher requestDispatcher = request.getRequestDispatcher("ket_qua.jsp");
        requestDispatcher.forward(request,response);
    }
}
