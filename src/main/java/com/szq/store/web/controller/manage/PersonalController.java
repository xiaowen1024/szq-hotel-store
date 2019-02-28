package com.szq.store.web.controller.manage;

import com.szq.store.web.controller.base.BaseCotroller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by shishiming on 2018/9/9.
 */
@Controller
@RequestMapping("/personal")
public class PersonalController extends BaseCotroller{
    @RequestMapping("/help")
    public ModelAndView help(){
        ModelAndView view = new ModelAndView();
        view.setViewName("/help/help");
        return view;
    }

    @RequestMapping("/my_integral")
    public ModelAndView my_integral(){
        ModelAndView view = new ModelAndView();
        view.setViewName("/personal/my_integral");
        return view;
    }
    @RequestMapping("/my_account")
    public ModelAndView my_account(){
        ModelAndView view = new ModelAndView();
        view.setViewName("/personal/my_account");
        return view;
    }
    @RequestMapping("/my_adviser")
    public ModelAndView my_adviser(){
        ModelAndView view = new ModelAndView();
        view.setViewName("/personal/my_adviser");
        return view;
    }
    @RequestMapping("/my_favorite")
    public ModelAndView my_favorite(){
        ModelAndView view = new ModelAndView();
        view.setViewName("/personal/my_favorite");
        return view;
    }
    @RequestMapping("/my_history")
    public ModelAndView my_history(){
        ModelAndView view = new ModelAndView();
        view.setViewName("/personal/my_history");
        return view;
    }
    @RequestMapping("/my_identify")
    public ModelAndView my_identify(){
        ModelAndView view = new ModelAndView();
        view.setViewName("/personal/my_identify");
        return view;
    }
    @RequestMapping("/my_invest")
    public ModelAndView my_invest(){
        ModelAndView view = new ModelAndView();
        view.setViewName("/personal/my_invest");
        return view;
    }
    @RequestMapping("/my_msg")
    public ModelAndView my_msg(){
        ModelAndView view = new ModelAndView();
        view.setViewName("/personal/my_msg");
        return view;
    }
    @RequestMapping("/my_order")
    public ModelAndView page(){
        ModelAndView view = new ModelAndView();
        view.setViewName("/personal/my_order");
        return view;
    }

    @RequestMapping("/my_research")
    public ModelAndView my_research(){
        ModelAndView view = new ModelAndView();
        view.setViewName("/personal/my_research");
        return view;
    }

    @RequestMapping("/my_risk")
    public ModelAndView my_risk(){
        ModelAndView view = new ModelAndView();
        view.setViewName("/personal/my_risk");
        return view;
    }

    @RequestMapping("/login_pwd")
    public ModelAndView login_pwd(){
        ModelAndView view = new ModelAndView();
        view.setViewName("/personal/login_pwd");
        return view;
    }

    @RequestMapping("/pay_pwd")
    public ModelAndView pay_pwd(){
        ModelAndView view = new ModelAndView();
        view.setViewName("/personal/pay_pwd");
        return view;
    }
}
