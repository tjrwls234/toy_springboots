package com.example.toy_springboots.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.toy_springboots.service.UserCodeService;

@Controller
@RequestMapping(value = "/user")
public class UserController {
    @Autowired
    UserCodeService userCodeService;

    @RequestMapping(value = { "/list", "", "/" }, method = RequestMethod.GET)
    public ModelAndView list(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        Object resultMap = userCodeService.getList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/user/list");
        return modelAndView;
    }

    @RequestMapping(value = { "/form" }, method = RequestMethod.GET)
    public ModelAndView form(ModelAndView modelAndView) {
        modelAndView.setViewName("/user/edit");
        return modelAndView;
    }

    @RequestMapping(value = { "/edit" }, method = RequestMethod.POST)
    public ModelAndView edit(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        Object resultMap = userCodeService.insertAndList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/user/list");
        return modelAndView;
    }

    @RequestMapping(value = { "/update/{USERS_UID}" }, method = RequestMethod.GET)
    public ModelAndView update(@RequestParam Map<String, Object> params, @PathVariable String USERS_UID,
            ModelAndView modelAndView) {
        params.put("USERS_UID", USERS_UID);
        Object resultMap = userCodeService.getOne(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/user/update");
        return modelAndView;
    }

    @RequestMapping(value = { "/updatedone" }, method = RequestMethod.POST)
    public ModelAndView done(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        Object resultMap = userCodeService.updateAndList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/user/list");
        return modelAndView;
    }

    @RequestMapping(value = { "/delete/{USERS_UID}" }, method = RequestMethod.GET)
    public ModelAndView delete(@RequestParam Map<String, Object> params, @PathVariable String USERS_UID,
            ModelAndView modelAndView) {
        params.put("USERS_UID", USERS_UID);
        Object resultMap = userCodeService.deleteAndList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/user/list");
        return modelAndView;
    }
}
