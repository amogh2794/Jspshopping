/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package myApp;

/**
 *
 * @author Amogh
 */
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;
public class ActionTimer implements Interceptor {
    private long startTime;
    private long endTime;
    private long difference;
    public String intercept(ActionInvocation next)throws Exception{
        startTime=System.currentTimeMillis();
        next.invoke();
        endTime=System.currentTimeMillis();
        difference=endTime-startTime;
        System.out.println("Action"+next.getAction().getClass().getName()+"took"+difference+"millisecs");
        return "SUCCESS";
    }
    public void init(){
    }
    public void destroy(){
    }
  }

