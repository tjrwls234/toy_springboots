package com.example.toy_springboots.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.toy_springboots.dao.UserCodeDao;

@Service
public class UserCodeService {
    @Autowired
    UserCodeDao userCodeDao;

    public Object insertAndList(Object dataMap) {
        Object result = this.insertOne(dataMap);
        result = this.getList(dataMap);

        return result;
    }

    public Object deleteAndList(Object dataMap) {
        Object result = this.delete(dataMap);
        result = this.getList(dataMap);

        return result;
    }

    public Object updateAndList(Object dataMap) {
        Object result = this.updateOne(dataMap);
        result = this.getList(dataMap);

        return result;
    }

    public Object getList(Object dataMap) {
        String sqlMapId = "UserCode.selectList";
        Object result = userCodeDao.getList(sqlMapId, dataMap);

        return result;
    }

    public Object getOne(Object dataMap) {
        String sqlMapId = "UserCode.selectByUID";
        Object result = userCodeDao.getOne(sqlMapId, dataMap);

        return result;
    }

    public Object updateOne(Object dataMap) {
        String sqlMapId = "UserCode.updateByUID";
        Object result = userCodeDao.update(sqlMapId, dataMap);

        return result;
    }

    public Object insertOne(Object dataMap) {
        String sqlMapId = "UserCode.inserWithUID";
        Object result = userCodeDao.insert(sqlMapId, dataMap);

        return result;
    }

    public Object delete(Object dataMap) {
        String sqlMapId = "UserCode.deleteByUID";
        Object result = userCodeDao.delete(sqlMapId, dataMap);

        return result;
    }
}
