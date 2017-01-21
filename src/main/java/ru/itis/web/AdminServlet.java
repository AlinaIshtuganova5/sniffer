package ru.itis.web;

import org.apache.log4j.Logger;
import ru.itis.dao.DaoFactory;
import ru.itis.dao.SniffResultDao;
import ru.itis.pojo.SniffResult;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;

/**
 * Created by eljah32 on 10/11/2016.
 */

@WebServlet("/admin")
public class AdminServlet  extends HttpServlet {

    static Logger log = Logger.getLogger(SnifferServlet.class);
    static SniffResultDao sniffResultDao = DaoFactory.getDAOFactory(1).getSniffResultDao();

    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");

        String name = req.getUserPrincipal().getName();
//        String role = sniffResultDao.readRole(name);


        if (req.isUserInRole("admin")) {
            List<SniffResult> sniffResults= sniffResultDao.readAllSniffResults();
            req.setAttribute("sniffresults",sniffResults);
            getServletContext().getRequestDispatcher("/sniffresults.jsp").forward(req, resp);
        } else if (req.isUserInRole("hacker")) {
            List<SniffResult> sniffResults = sniffResultDao.readHackerSniffResult(name);
            req.setAttribute("sniffresults",sniffResults);
            getServletContext().getRequestDispatcher("/hackersniffresults.jsp").forward(req, resp);
        }

    }
}
