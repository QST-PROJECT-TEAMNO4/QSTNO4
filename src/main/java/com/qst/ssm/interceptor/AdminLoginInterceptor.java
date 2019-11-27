//package com.qst.ssm.interceptor;
//
//import com.qst.ssm.entity.Customer;
//import com.qst.ssm.entity.User;
//import org.springframework.web.servlet.HandlerInterceptor;
//import org.springframework.web.servlet.ModelAndView;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//public class AdminLoginInterceptor implements HandlerInterceptor {
//    @Override
//    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
//            throws Exception{
//
//        //获取Session
//        HttpSession session=request.getSession();
//        User user=(User) session.getAttribute("USER_SESSION");
//        Customer customer=(Customer) session.getAttribute("CUSTOMER_SESSION");
//        //判断Session中是否有用户数据，如果有，则返回true，继续向下执行
//        if (user!=null){
//            return true;
//        }
//
//        //获取请求的Url
//        String url=request.getRequestURI();
//        //Url:除了登录请求外，其他的URl都进行拦截控制
//        if (url.contains("/AdminLogin.action")||url.contains("/CustomerLogin.action")){
//            return true;
//        }
//        //不符合条件的给出提示信息，并转发到登录页面
//        request.setAttribute("msg","您还没有登录，请先登录");
//        Boolean str=true;
//        if (user==null){
//            request.getRequestDispatcher("/pages/login.jsp")
//                    .forward(request,response);
//            str = false;
//        }else if (customer==null) {
//
//            request.getRequestDispatcher("/pages/AdminLogin.jsp")
//                    .forward(request, response);
//            str = false;
//        }
//        return str;
//    }
//
//
//    @Override
//    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView){}
//    @Override
//    public  void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler,Exception ex)
//            throws Exception{}
//}
//
