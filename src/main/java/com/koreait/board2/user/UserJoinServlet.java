package com.koreait.board2.user;

import com.koreait.board2.MyUtils;
import com.koreait.board2.dao.UserDAO;
import com.koreait.board2.vo.UserVO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/user/join")
public class UserJoinServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        MyUtils.disForward(req, res, "user/join");
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String uid = req.getParameter("uid");
        String upw = req.getParameter("upw");
        String nm = req.getParameter("nm");
        int gender = MyUtils.getParameterInt(req, "gender");

        System.out.println("User ID : " + uid);
        System.out.println("User Password : " + upw);
        System.out.println("User Name : " + nm);
        System.out.println("Gender : " + gender);

        UserVO param = new UserVO();
        param.setUid(uid);
        param.setUpw(upw);
        param.setNm(nm);
        param.setGender(gender);

        int result = UserDAO.Join(param);
        switch(result){
            case 0:
                req.setAttribute("msg", "회원가입에 실패했습니다.");
                doGet(req, res);
                break;
            case 1:
                res.sendRedirect("/user/login");
                break;
        }
    }
}