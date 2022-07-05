package controller;

import model.Customer;
import service.CustomerService;
import service.ICustomerService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "CustomerServlet", urlPatterns = "/customer")
public class CustomerServlet extends HttpServlet {
    private ICustomerService iCustomerService = new CustomerService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "create":
                    showNewForm(request, response);
                    break;
                case "search":

                    break;
                case "edit":
                    showEditForm(request,response);
                    break;
                default:
                    listUser(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                try {
                    insertCustomer(request, response);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                break;
            case "edit":
                try {
                    updateCustomer(request,response);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                break;
            case "delete":
                try {
                    deleteCustomer(request,response);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                break;
            default:
                try {
                    listUser(request, response);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                break;
        }
    }

    private void listUser(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        List<Customer> customerList = iCustomerService.selectAllCustomer();
        request.setAttribute("customerList", customerList);
        request.getRequestDispatcher("view/list.jsp").forward(request, response);
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/create.jsp");
        dispatcher.forward(request, response);
    }

    private void insertCustomer(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        int idType = Integer.parseInt(request.getParameter("idType"));
        String name = request.getParameter("name");
        String date = request.getParameter("date");
        int gender = Integer.parseInt(request.getParameter("gender"));
        String idCard = request.getParameter("idCard");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        Customer customer = new Customer(idType, name, date, gender, idCard, phone, email, address);
        iCustomerService.insertCustomer(customer);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/create.jsp");
        dispatcher.forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Customer customer = iCustomerService.selectCustomer(id);
        request.setAttribute("customer", customer);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/edit.jsp");
        dispatcher.forward(request, response);

    }

    private void updateCustomer(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        int idType = Integer.parseInt(request.getParameter("idType"));
        String name = request.getParameter("name");
        String date = request.getParameter("date");
        int gender = Integer.parseInt(request.getParameter("gender"));
        String idCard = request.getParameter("idCard");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String address = request.getParameter("address");

        Customer customer = new Customer(id, idType, name, date, gender, idCard, phone, email, address);
        iCustomerService.updateCustomer(customer);

        List<Customer> customerList = iCustomerService.selectAllCustomer();
        request.setAttribute("customerList", customerList);
        request.getRequestDispatcher("view/list.jsp").forward(request, response);

    }

    private void deleteCustomer(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("idDelete"));
        iCustomerService.deleteCustomer(id);

        List<Customer> customerList = iCustomerService.selectAllCustomer();
        request.setAttribute("customerList", customerList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/list.jsp");
        dispatcher.forward(request, response);
    }

}
