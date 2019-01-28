package com.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import javax.activation.DataSource;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.supercsv.io.CsvBeanWriter;
import org.supercsv.io.ICsvBeanWriter;
import org.supercsv.prefs.CsvPreference;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.InputStreamSource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;

import com.dao.AdminManageDAO;
import com.vo.CsvVO;
import com.vo.ManageCasesVO;
import com.vo.ManageComplainVO;
import com.vo.ManageDataSetVO;
import com.vo.ManagePostVO;
import com.vo.TestingVO;
@Controller
public class AdminManageController {

	@Autowired
	AdminManageDAO dao;
	
	@Autowired
	JavaMailSender mailSender;
	
	@RequestMapping(value="/mainpage.html",method=RequestMethod.GET)
	public ModelAndView home()
	{
		return new ModelAndView("Admin/index");
	}
	
	////////////////* MAILING OWNER METHODS *///////////////////////////
	@RequestMapping(value="/uploadCSVandSendMail.html",method=RequestMethod.GET)
	public ModelAndView UploadCSV(@ModelAttribute TestingVO testingVO)
	{
		return new ModelAndView("Admin/UploadCSVandSendMail");
	}
	
	@RequestMapping(value="/uploadingCSVandSendingMail.html",method=RequestMethod.POST)
	public ModelAndView UploadingCSVandSendingMail(@RequestParam CommonsMultipartFile[] uploadfile,@ModelAttribute CsvVO csvVO,HttpServletRequest request) throws IOException
	{
		
		HttpSession session=request.getSession();
		ServletContext context = session.getServletContext();  
	    String path = context.getRealPath("/CSVs");  
		for (CommonsMultipartFile aFile : uploadfile)
		{
			
				byte[] bytes =aFile.getBytes();  
			    BufferedOutputStream stream =new BufferedOutputStream(new FileOutputStream(  
			         new File(path + File.separator + aFile.getOriginalFilename())));  
			    stream.write(bytes);  
			    stream.flush();  
			    stream.close();  
			csvVO.setCsvName(aFile.getOriginalFilename());
			csvVO.setCsvPath(path);
			dao.insertCSV(csvVO);
			
			String file=aFile.getOriginalFilename();
			String emailTo ="aditshah26@gmail.com";
	        String subject ="Notification About Factory";
	        
	        	mailSender.send(new MimeMessagePreparator() {
	            @Override
	            public void prepare(MimeMessage mimeMessage) throws Exception {
	                MimeMessageHelper messageHelper = new MimeMessageHelper(
	                        mimeMessage, true, "UTF-8");
	                messageHelper.setTo(emailTo);
	                messageHelper.setSubject(subject);
	                if(file.equals("case.csv"))
	                	{
	                	 String message ="CSV contains all data regarding recent Cases";
	                	 messageHelper.setText(message);
		                 
		                // determines if there is an upload file, attach it to the e-mail
		                String attachName =aFile.getOriginalFilename();
		                messageHelper.addAttachment(attachName, new InputStreamSource() {
		                         
		                        @Override
		                        public InputStream getInputStream() throws IOException {
		                            return aFile.getInputStream();
		                        	}
		                    	});
		            			}
	                if(file.equals("complain.csv"))
                	{
                	 String message ="CSV contains all data regarding recent Complain";
                    messageHelper.setText(message);
	                 
	                // determines if there is an upload file, attach it to the e-mail
	                String attachName =aFile.getOriginalFilename();
	                messageHelper.addAttachment(attachName, new InputStreamSource() {
	                         
	                        @Override
	                        public InputStream getInputStream() throws IOException {
	                            return aFile.getInputStream();
	                        	}
	                    	});
	            			}
	                if(file.equals("dataset.csv"))
                	{
                	 String message ="CSV contains all data regarding recent Dataset";
                    messageHelper.setText(message);
	                 
	                // determines if there is an upload file, attach it to the e-mail
	                String attachName =aFile.getOriginalFilename();
	                messageHelper.addAttachment(attachName, new InputStreamSource() {
	                         
	                        @Override
	                        public InputStream getInputStream() throws IOException {
	                            return aFile.getInputStream();
	                        	}
	                    	});
	            			}
	                if(file.equals("post.csv"))
                	{
                	 String message ="CSV contains all data regarding recent Post";
                    messageHelper.setText(message);
	                 
	                // determines if there is an upload file, attach it to the e-mail
	                String attachName =aFile.getOriginalFilename();
	                messageHelper.addAttachment(attachName,new InputStreamSource() {
	                         
	                        @Override
	                        public InputStream getInputStream() throws IOException {
	                            return aFile.getInputStream();
	                        	}
	                    	});
	            			}
	                	}	
	        	}); 
	
		}
			return new ModelAndView("Admin/index");
	}
	
	
	@RequestMapping(value="/CaseExportCSV.html",method=RequestMethod.GET)
	public ModelAndView downloadCaseCSV(@ModelAttribute ManageCasesVO caseVO,HttpServletResponse response,HttpServletRequest request) throws IOException
	{
		HttpSession session=request.getSession();
		List<ManageCasesVO> list=(List<ManageCasesVO>) session.getAttribute("searchcase");
			String csvFileName = "case.csv";
	        response.setContentType("text/csv");
	        // creates mock data
	        String headerKey = "Content-Disposition";
	        String headerValue = String.format("attachment; filename=\"%s\"",
	                csvFileName);
	        response.setHeader(headerKey, headerValue);
	        // uses the Super CSV API to generate CSV data from the model data
	        ICsvBeanWriter csvWriter = new CsvBeanWriter(response.getWriter(),
	                CsvPreference.STANDARD_PREFERENCE);
	 
	        String[] header = {"Id","CaseName","CaseDescription"};	 
	        csvWriter.writeHeader(header);
	        for (ManageCasesVO abc : list) {
	            csvWriter.write(abc, header);
	        }
	 	        csvWriter.close();
	 	        return new ModelAndView("Admin/index");
}
	
	@RequestMapping(value="/ComplainExportCSV.html",method=RequestMethod.GET)
	public ModelAndView downloadComplainCSV(@ModelAttribute ManageComplainVO complainVO,HttpServletResponse response,HttpServletRequest request) throws IOException
	{
		HttpSession session=request.getSession();
		List<ManageComplainVO> list=(List<ManageComplainVO>) session.getAttribute("searchComplain");
			String csvFileName = "complain.csv";
	        response.setContentType("text/csv");
	        // creates mock data
	        String headerKey = "Content-Disposition";
	        String headerValue = String.format("attachment; filename=\"%s\"",
	                csvFileName);
	        response.setHeader(headerKey, headerValue);
	        // uses the Super CSV API to generate CSV data from the model data
	        ICsvBeanWriter csvWriter = new CsvBeanWriter(response.getWriter(),
	                CsvPreference.STANDARD_PREFERENCE);
	 
	        String[] header = {"Id","ComplainName","ComplainDescription"};	 
	        csvWriter.writeHeader(header);
	        for (ManageComplainVO abc : list) {
	            csvWriter.write(abc, header);
	        }
	 	        csvWriter.close();
	 	        return new ModelAndView("Admin/index");
}
	
	@RequestMapping(value="/PostExportCSV.html",method=RequestMethod.GET)
	public ModelAndView downloadPostCSV(@ModelAttribute ManagePostVO postVO,HttpServletResponse response,HttpServletRequest request) throws IOException
	{
		HttpSession session=request.getSession();
		List<ManagePostVO> list=(List<ManagePostVO>) session.getAttribute("searchpost");
			String csvFileName = "post.csv";
	        response.setContentType("text/csv");
	        // creates mock data
	        String headerKey = "Content-Disposition";
	        String headerValue = String.format("attachment; filename=\"%s\"",
	                csvFileName);
	        response.setHeader(headerKey, headerValue);
	        // uses the Super CSV API to generate CSV data from the model data
	        ICsvBeanWriter csvWriter = new CsvBeanWriter(response.getWriter(),
	                CsvPreference.STANDARD_PREFERENCE);
	 
	        String[] header = {"Id","PostName","PostDescription"};	 
	        csvWriter.writeHeader(header);
	        for (ManagePostVO abc : list) {
	            csvWriter.write(abc, header);
	        }
	 	        csvWriter.close();
	 	        return new ModelAndView("Admin/index");
}

	@RequestMapping(value="/DatasetExportCSV.html",method=RequestMethod.GET)
	public ModelAndView downloadDatasetCSV(@ModelAttribute ManageDataSetVO datasetVO,HttpServletResponse response,HttpServletRequest request) throws IOException
	{
		HttpSession session=request.getSession();
		List<ManageDataSetVO> list=(List<ManageDataSetVO>) session.getAttribute("searchdataset");
			String csvFileName = "dataset.csv";
	        response.setContentType("text/csv");
	        // creates mock data
	        String headerKey = "Content-Disposition";
	        String headerValue = String.format("attachment; filename=\"%s\"",
	                csvFileName);
	        response.setHeader(headerKey, headerValue);
	        // uses the Super CSV API to generate CSV data from the model data
	        ICsvBeanWriter csvWriter = new CsvBeanWriter(response.getWriter(),
	                CsvPreference.STANDARD_PREFERENCE);
	 
	        String[] header = {"Id","FileName","Path"};	 
	        csvWriter.writeHeader(header);
	        for (ManageDataSetVO abc : list) {
	            csvWriter.write(abc, header);
	        }
	 	        csvWriter.close();
	 	        return new ModelAndView("Admin/index");
}

	
	////////////////* TESTING METHOD FOR OBJECT DETECTION *///////////////////////////
	
	@RequestMapping(value="/addPics.html",method=RequestMethod.GET)
	public ModelAndView addPics(@ModelAttribute TestingVO testingVO)
	{
		return new ModelAndView("Admin/AddPictures","testingVO",new TestingVO());
	}

	@RequestMapping(value="/insertPic.html",method=RequestMethod.POST)
	public ModelAndView insertPic(@ModelAttribute TestingVO testingVO,@RequestParam CommonsMultipartFile[] uploadfile,HttpSession session) throws IOException
	{
		  ServletContext context = session.getServletContext();  
		    String path = context.getRealPath("/testing");  
			for (CommonsMultipartFile aFile : uploadfile){
				
				if (!aFile.getOriginalFilename().equals("")) {
					byte[] bytes =aFile.getBytes();  
				    BufferedOutputStream stream =new BufferedOutputStream(new FileOutputStream(  
				         new File(path + File.separator + aFile.getOriginalFilename())));  
				    stream.write(bytes);  
				    stream.flush();  
				    stream.close();  
				testingVO.setPicName(aFile.getOriginalFilename());
				testingVO.setPicPath(path);
				dao.insertPic(testingVO);
				}
			}

			return new ModelAndView("Admin/index","testingVO",new TestingVO());
	}
	
	@RequestMapping(value="/runDetection.html",method=RequestMethod.GET)
	public ModelAndView runDetection(@ModelAttribute TestingVO testingVO)
	{
		return new ModelAndView("Admin/RunObjectDetection","testingVO",new TestingVO());
	}
	
	@RequestMapping(value="/showResult.html",method=RequestMethod.GET)
	public ModelAndView showResult(@ModelAttribute TestingVO testingVO,HttpServletRequest request)
	{
		@Configuration
		@EnableWebMvc class WebConfig extends WebMvcConfigurerAdapter {

		    public void addResourceHandlers(ResourceHandlerRegistry registry) {
		       List list= (List)((ResourceHandlerRegistry) registry).addResourceHandler("WebContent\\images");
				HttpSession session=request.getSession();
				session.setAttribute("getimages", list);
		    }
		}
		return new ModelAndView("Admin/ViewStoredResult","testingVO",new TestingVO());
	}
	
		////////////////* MANAGE COMPLAIN METHODS *///////////////////////////

	@RequestMapping(value="/addComplain.html",method=RequestMethod.GET)
	public ModelAndView addComplain(@ModelAttribute ManageComplainVO complainVO)
	{
		return new ModelAndView("Admin/AddComplain","complainVO",new ManageComplainVO());
	}
	
	@RequestMapping(value="/insertComplain.html",method=RequestMethod.POST)
	public ModelAndView insertComplain(@ModelAttribute ManageComplainVO complainVO,HttpServletRequest request)
	{
		dao.insertComplain(complainVO);
		return new ModelAndView("Admin/index","complainVO",new ManageComplainVO());
	}

	@RequestMapping(value="/viewComplain.html",method=RequestMethod.GET)
	public ModelAndView search(@ModelAttribute ManageComplainVO complainVO,HttpServletRequest request)
	{
		HttpSession session=request.getSession();
		List list=dao.searchComplain(complainVO);
		session.setAttribute("searchComplain",list);
		return new ModelAndView("Admin/ViewComplain","complainVO",new ManageComplainVO());
	}

	@RequestMapping(value="/editComplain.html",method=RequestMethod.GET)
	public ModelAndView editComplain(@ModelAttribute ManageComplainVO complainVO,HttpServletRequest request)
	{
		HttpSession session=request.getSession();
		int id=Integer.parseInt(request.getParameter("id"));
		complainVO.setId(id);
		List list=dao.searchUpdateComplain(complainVO);
		session.setAttribute("updateComplain",list);
		return new ModelAndView("Admin/UpdateComplain","complainVO",new ManageComplainVO());
	}
	
	@RequestMapping(value="/updateComplain.html",method=RequestMethod.POST)
	public ModelAndView updateComplain(@ModelAttribute ManageComplainVO complainVO,HttpServletRequest request)
	{
		int id=Integer.parseInt(request.getParameter("id"));
		complainVO.setId(id);
		dao.updateComplain(complainVO);
		return new ModelAndView("Admin/index","complainVO",new ManageComplainVO());
	}
	
	@RequestMapping(value="/deleteComplain.html",method=RequestMethod.GET)
	public ModelAndView deleteComplain(@ModelAttribute ManageComplainVO complainVO,HttpServletRequest request)
	{
		int id=Integer.parseInt(request.getParameter("id"));
		complainVO.setId(id);
		dao.deleteComplain(complainVO);
		return new ModelAndView("Admin/index","complainVO",new ManageComplainVO());
		
	}

	////////////////* MANAGE DATASET METHODS *///////////////////////////
	
	@RequestMapping(value="/addDataSet.html",method=RequestMethod.GET)
	public ModelAndView addDataSet(@ModelAttribute ManageDataSetVO datasetVO)
	{
		return new ModelAndView("Admin/AddDataSet","datasetVO",new ManageDataSetVO());
	}
	
	@RequestMapping(value="/insertDataSet.html",method=RequestMethod.POST)
	public ModelAndView insertDataSet(@ModelAttribute ManageDataSetVO datasetVO,@RequestParam CommonsMultipartFile[] uploadfile,HttpSession session) throws IOException
	{
		  ServletContext context = session.getServletContext();  
		    String path = context.getRealPath("/docs");  
		    for(CommonsMultipartFile multipartFile:uploadfile){
		    String filename = multipartFile.getOriginalFilename();  
		  
		    System.out.println(path+" "+filename);        
		  
		    byte[] bytes =multipartFile.getBytes();  
		    BufferedOutputStream stream =new BufferedOutputStream(new FileOutputStream(  
		         new File(path + File.separator + filename)));  
		    stream.write(bytes);  
		    stream.flush();  
		    stream.close();  
		datasetVO.setFileName(filename);
		datasetVO.setPath(path);
		dao.insertFile(datasetVO);
		    }
		return new ModelAndView("Admin/index","datasetVO",new ManageDataSetVO());
	}

	@RequestMapping(value="/viewDataSet.html",method=RequestMethod.GET)
	public ModelAndView viewDataSet(@ModelAttribute ManageDataSetVO datasetVO,HttpServletRequest request)
	{
		HttpSession session=request.getSession();
		List list=dao.searchDataSet(datasetVO);
		session.setAttribute("searchdataset",list);
		return new ModelAndView("Admin/ViewDataSet","datasetVO",new ManageDataSetVO());
		
	}
	
	@RequestMapping(value="/editDataSet.html",method=RequestMethod.GET)
	public ModelAndView editDataSet(@ModelAttribute ManageDataSetVO datasetVO,HttpServletRequest request)
	{
		HttpSession session=request.getSession();
		int id=Integer.parseInt(request.getParameter("id"));
		datasetVO.setId(id);
		List list=dao.searchUpdateDataSet(datasetVO);
		session.setAttribute("updatedataset",list);
		return new ModelAndView("Admin/UpdateDataSet","datasetVO",new ManageDataSetVO());
	}
	
	@RequestMapping(value="/updateDataSet.html",method=RequestMethod.POST)
	public ModelAndView updateDataSet(@ModelAttribute ManageDataSetVO datasetVO,@RequestParam CommonsMultipartFile uploadfile,HttpSession session,HttpServletRequest request) throws IOException
	{
		 ServletContext context = session.getServletContext();  
		    String path = context.getRealPath("/docs");  
		    String filename = uploadfile.getOriginalFilename();  
		  
		    System.out.println(path+" "+filename);        
		  
		    byte[] bytes =uploadfile.getBytes();  
		    BufferedOutputStream stream =new BufferedOutputStream(new FileOutputStream(  
		         new File(path + File.separator + filename)));  
		    stream.write(bytes);  
		    stream.flush();  
		    stream.close();  
		 
		int id=Integer.parseInt(request.getParameter("id"));
		datasetVO.setId(id);
		datasetVO.setFileName(filename);
		datasetVO.setPath(path);
		dao.updateDataSet(datasetVO);
		return new ModelAndView("Admin/index","datasetVO",new ManageDataSetVO());
	}
	
	@RequestMapping(value="/deleteDataSet.html",method=RequestMethod.GET)
	public ModelAndView deleteDataSet(@ModelAttribute ManageDataSetVO datasetVO,HttpServletRequest request)
	{
		int id=Integer.parseInt(request.getParameter("id"));
		datasetVO.setId(id);
		dao.deleteDataSet(datasetVO);
		return new ModelAndView("Admin/index","datasetVO",new ManageDataSetVO());
		
	}
	
	/////////////////////* MANAGE POST METHODS *///////////////////////
	
	@RequestMapping(value="/addPost.html",method=RequestMethod.GET)
	public ModelAndView managepost(@ModelAttribute ManagePostVO postVO)
	{
		return new ModelAndView("Admin/AddPost","postVO",new ManagePostVO());
	}
	
	@RequestMapping(value="/insertPost.html",method=RequestMethod.POST)
	public ModelAndView insertPost(@ModelAttribute ManagePostVO postVO,HttpServletRequest request)
	{
		dao.insertPost(postVO);
		return new ModelAndView("Admin/index","postVO",new ManagePostVO());
	}

	@RequestMapping(value="/viewPost.html",method=RequestMethod.GET)
	public ModelAndView search(@ModelAttribute ManagePostVO postVO,HttpServletRequest request)
	{
		HttpSession session=request.getSession();
		List list=dao.searchPost(postVO);
		session.setAttribute("searchpost",list);
		return new ModelAndView("Admin/ViewPost","postVO",new ManagePostVO());
	}

	@RequestMapping(value="/editPost.html",method=RequestMethod.GET)
	public ModelAndView editPost(@ModelAttribute ManagePostVO postVO,HttpServletRequest request)
	{
		HttpSession session=request.getSession();
		int id=Integer.parseInt(request.getParameter("id"));
		postVO.setId(id);
		List list=dao.searchUpdatePost(postVO);
		session.setAttribute("updatepost",list);
		return new ModelAndView("Admin/UpdatePost","postVO",new ManagePostVO());
	}
	
	@RequestMapping(value="/updatePost.html",method=RequestMethod.POST)
	public ModelAndView updatepost(@ModelAttribute ManagePostVO postVO,HttpServletRequest request)
	{
		int id=Integer.parseInt(request.getParameter("id"));
		postVO.setId(id);
		dao.updatePost(postVO);
		return new ModelAndView("Admin/index","postVO",new ManagePostVO());
	}
	
	@RequestMapping(value="/deletePost.html",method=RequestMethod.GET)
	public ModelAndView deletePost(@ModelAttribute ManagePostVO postVO,HttpServletRequest request)
	{
		int id=Integer.parseInt(request.getParameter("id"));
		postVO.setId(id);
		dao.deletePost(postVO);
		return new ModelAndView("Admin/index","postVO",new ManagePostVO());
		
	}
	
	////////////////////**MANAGE CASE METHODS//////////////////////////////////////
	
	@RequestMapping(value="/addCase.html",method=RequestMethod.GET)
	public ModelAndView addCase(@ModelAttribute ManageCasesVO caseVO,HttpServletRequest request)
	{
		return new ModelAndView("Admin/AddCase","caseVO",new ManageCasesVO());
	}
	
	@RequestMapping(value="/insertCase.html",method=RequestMethod.POST)
	public ModelAndView insertCase(@ModelAttribute ManageCasesVO caseVO,HttpServletRequest request)
	{
		dao.insertCases(caseVO);
		return new ModelAndView("Admin/index","caseVO",new ManageCasesVO());
	}
	
	@RequestMapping(value="/viewCase.html",method=RequestMethod.GET)
	public ModelAndView searchcase(@ModelAttribute ManageCasesVO caseVO,HttpServletRequest request)
	{
		HttpSession session=request.getSession();
		List list=dao.searchCase(caseVO);
		session.setAttribute("searchcase",list);
		return new ModelAndView("Admin/ViewCase","caseVO",new ManageCasesVO());
	}

	@RequestMapping(value="/editCase.html",method=RequestMethod.GET)
	public ModelAndView editCase(@ModelAttribute ManageCasesVO caseVO,HttpServletRequest request)
	{
		HttpSession session=request.getSession();
		int id=Integer.parseInt(request.getParameter("id"));
		caseVO.setId(id);
		List list=dao.searchUpdateCase(caseVO);
		session.setAttribute("updatecase",list);
		return new ModelAndView("Admin/UpdateCase","caseVO",new ManageCasesVO());
	}
	
	@RequestMapping(value="/updateCase.html",method=RequestMethod.POST)
	public ModelAndView updatecase(@ModelAttribute ManageCasesVO caseVO,HttpServletRequest request)
	{
		int id=Integer.parseInt(request.getParameter("id"));
		caseVO.setId(id);
		dao.updateCase(caseVO);
		return new ModelAndView("Admin/index","caseVO",new ManageCasesVO());
	}
	
	@RequestMapping(value="/deleteCase.html",method=RequestMethod.GET)
	public ModelAndView deleteCase(@ModelAttribute ManageCasesVO caseVO,HttpServletRequest request)
	{
		int id=Integer.parseInt(request.getParameter("id"));
		caseVO.setId(id);
		dao.deleteCase(caseVO);
		return new ModelAndView("Admin/index","caseVO",new ManageCasesVO());
		
	}

}
