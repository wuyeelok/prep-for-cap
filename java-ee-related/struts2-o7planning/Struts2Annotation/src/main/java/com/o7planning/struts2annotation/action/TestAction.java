package com.o7planning.struts2annotation.action;
 
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
 
import com.opensymphony.xwork2.ActionSupport;
 
@Action(value = "test", //
results = { //
        @Result(name = "testPage", location = "/WEB-INF/pages/test.jsp")
} //
)
public class TestAction  extends ActionSupport {
  
    private static final long serialVersionUID = 1L;
 
    @Override
    public String execute() {
          
        return "testPage";
    }
    
}