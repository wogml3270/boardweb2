package com.koreait.board2.board;

import com.koreait.board2.MyUtils;
import com.koreait.board2.dao.BoardDAO;
import com.koreait.board2.vo.BoardParamVO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/board/list")
public class BoardListServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        int recordCnt = 5;
        BoardParamVO param = new BoardParamVO();
        param.setRecordCnt(recordCnt);
        req.setAttribute("maxPage", BoardDAO.selMaxPage(param));

        int page = MyUtils.getParameterInt(req, "page", 1);
        param.setPage(page);

        req.setAttribute("list", BoardDAO.selBoardList(param));
        MyUtils.disForward(req, res, "board/list");
        // disForward는 항상 아래로
    }
}