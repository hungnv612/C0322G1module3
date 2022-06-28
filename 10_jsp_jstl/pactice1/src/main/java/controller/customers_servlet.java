package controller;

import model.customers;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "customers_servlet", urlPatterns = {"/customers", "/"})
public class customers_servlet extends HttpServlet {
    static List<customers> customersList = new ArrayList<>();
    static {
        customersList.add( new customers( "Chien", "11/11/1111", "DN","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjGXUf2cos4AIYJl-YmLbPBtPSO6FnIXPMuA&usqp=CAU" ));
        customersList.add( new customers("Tien Dat", "22/22/2222","HN","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfgR7GZ9sINTJyBgLvDWhOqsIxinfsGML5eg&usqp=CAU"));
        customersList.add( new customers("Hoan", "33/33/3333", "HA","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTk78-lfD9lRWgr2Q-cwdm6nmoMWHMe1sugTg&usqp=CAU" ));
        customersList.add( new customers("Hai", "44/44/4444", "vn","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKuy0BGtHna0MY6Kd3MBf6wADozMXP97MyPQ&usqp=CAU"));
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("customersList", customersList);
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
