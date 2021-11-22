package com.koreait.board2.board;

import com.koreait.board2.MyUtils;
import com.koreait.board2.dao.BoardDAO;
import com.koreait.board2.vo.BoardVO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/board/detail")
public class BoardDetailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        int iboard = MyUtils.getParameterInt(req, "pk");
        BoardVO param = new BoardVO();
        param.setIboard(iboard);

        req.setAttribute("data", BoardDAO.selBoardDetail(param));
        MyUtils.disForward(req, res, "board/detail");
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

    }
}