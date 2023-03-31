package com.edu.wepet.client.controller;


import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

import org.apache.commons.io.FileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.edu.wepet.domain.Board;
import com.edu.wepet.domain.CommunityCat1;
import com.edu.wepet.domain.CommunityCat2;
import com.edu.wepet.domain.Member;
import com.edu.wepet.domain.Reply;
import com.edu.wepet.domain.Sns;
import com.edu.wepet.model.board.BoardService;
import com.edu.wepet.model.communityCat1.CommunityCat1Service;
import com.edu.wepet.model.communityCat2.CommunityCat2Service;
import com.edu.wepet.model.reply.ReplyService;
import com.google.gson.Gson;
import com.google.gson.JsonObject;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private CommunityCat1Service communityCat1Service;
	
	@Autowired
	private CommunityCat2Service communityCat2Service;
	
	@Autowired
	private BoardService boardService;
	
	@Autowired
	private ReplyService replySerivce;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	
	
	
	
	
	@GetMapping("gardener/write")
	public ModelAndView getWritePage(HttpServletRequest request) {
		
		return new ModelAndView("wepet/client/community_board/write");
		
	}
	
	@GetMapping("gardener/view")
	public ModelAndView getViewPage(HttpServletRequest request) {
		
		return new ModelAndView("wepet/client/community_board/view");
		
	}
	
	@PostMapping("/post")
	public ModelAndView posting(HttpServletRequest request, Board board, CommunityCat1 communityCat1, CommunityCat2 communityCat2, Member member) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		logger.info(member.getNickname());
		
		logger.info(communityCat2.getCat2());
		
		logger.info(board.getTitle());
		
		
		
		communityCat1.setCommunity_cat1_idx(1);
		communityCat1.setCat1("user");
	
		board.setCommunity_cat1(communityCat1);
		board.setCommunity_cat2(communityCat2Service.select(Integer.parseInt(communityCat2.getCat2())));
		
		
		Sns sns  = new Sns();
		sns.setSns_idx(1);
		sns.setSns_type("google");
		
		member.setSns(sns);;
		member.setMember_idx(22);
		member.setNickname("나는 맴버");
		
		board.setMember(member);
		
		boardService.insert(board);
		
		
		return new ModelAndView("wepet/client/community_board/view");
	}
	
	@RequestMapping(value="/uploadSummernoteImageFileforCommunity", produces = "application/json; charset=utf8")
	@ResponseBody
	public String uploadSummernoteImageFile(@RequestParam("file") MultipartFile multipartFile, HttpServletRequest request )  {
		logger.info("서머 노트 파일 업로드 시작!");
		JsonObject jsonObject = new JsonObject();
		
        
		//String fileRoot = "/Users/MacBookPro/spring_workspace/TempTestNew/src/main/webapp/resources/summernote/resources/fileupload/";
		
		// 내부경로로 저장
		
		String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
		String fileRoot = contextRoot+"resources/fileupload/";
		logger.info(fileRoot);
		String originalFileName = multipartFile.getOriginalFilename();	//오리지날 파일명
		String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	//파일 확장자
		String savedFileName = UUID.randomUUID() + extension;	//저장될 파일 명
		
		File targetFile = new File(fileRoot + savedFileName);	
		try {
			InputStream fileStream = multipartFile.getInputStream();
			FileUtils.copyInputStreamToFile(fileStream, targetFile);	//파일 저장
			jsonObject.addProperty("url","/resources/fileupload/"+savedFileName); // contextroot + resources + 저장할 내부 폴더명
			
			jsonObject.addProperty("savedFileName" , savedFileName);
			jsonObject.addProperty("responseCode", "success");
				
		} catch (IOException e) {
			FileUtils.deleteQuietly(targetFile);	//저장된 파일 삭제
			jsonObject.addProperty("responseCode", "error");
			e.printStackTrace();
		}
		String a = jsonObject.toString();
		return a;
	}
	
	@GetMapping("/getBoardDetail")
	@ResponseBody
	public ResponseEntity<Board> getBoardDetail(@RequestParam("board_idx") String community_board_idx, HttpServletRequest request) {
		HttpHeaders resHeaders = new HttpHeaders();
		resHeaders.add("Content-Type", "text/html;charset=UTF-8");
		
		
		Board  board = boardService.select(Integer.parseInt(community_board_idx));
		
		
		
		return new ResponseEntity<Board>(board , resHeaders ,HttpStatus.OK);
	}
	
	
	@GetMapping("/commercialView")
	public ModelAndView getCommercialView(HttpServletRequest request) {
		
		
		
		
		return new ModelAndView("wepet/client/commercial/commerce");
	}
	@GetMapping("/getCat2")
	public ResponseEntity<String> getCat2(HttpServletRequest request) {
		
		HttpHeaders resHeaders = new HttpHeaders();
		resHeaders.add("Content-Type", "text/html;charset=UTF-8");
		
		Gson gson = new Gson();
		String cat2 = gson.toJson(communityCat2Service.selectAll());
		
		
		
		return new ResponseEntity<String>(cat2, resHeaders ,HttpStatus.OK);
	}
	
	@PostMapping("/addreply")
	public ResponseEntity<String> addReply(HttpServletRequest request, Reply reply) {
		
		HttpHeaders resHeaders = new HttpHeaders();
		resHeaders.add("Content-Type", "text/html;charset=UTF-8");
		
		Gson gson = new Gson();
		String cat2 = gson.toJson(reply);
		
		logger.info(reply.getContent());
		reply.setWriter("관리");
		
		replySerivce.insert(reply);
		
		
		
		return new ResponseEntity<String>(cat2, resHeaders ,HttpStatus.OK);
	}
	
	@GetMapping("/getlist")
	public ResponseEntity<String> getList(HttpServletRequest request){
		HttpHeaders resHeaders = new HttpHeaders();
		resHeaders.add("Content-Type", "text/html;charset=UTF-8");
		
		
		List<Board> boardList = boardService.selectAll();
		
		Gson gson = new Gson();
		String data =gson.toJson(boardList);
		data.replaceAll("//", "");
		
		logger.info(data);
		
		
		
		return  new ResponseEntity<String>(data, resHeaders ,HttpStatus.OK);
	}
	
	@PostMapping("/deleteboard")
	public ResponseEntity<String> deleteBoard(HttpServletRequest request, String board_idx) {
		
		HttpHeaders resHeaders = new HttpHeaders();
		resHeaders.add("Content-Type", "text/html;charset=UTF-8");
		
		logger.info(""+board_idx);
		
		boardService.delete(Integer.parseInt(board_idx));
		
		
		
		return new ResponseEntity<String>(HttpStatus.OK);
	}
	
}
