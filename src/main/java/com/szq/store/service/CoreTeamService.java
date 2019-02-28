package com.szq.store.service;

import com.szq.store.dao.CoreTeamDao;
import com.szq.store.entity.bo.CoreTeamBo;
import com.szq.store.entity.bo.EmployeeBo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by yxw on 2018/7/18.
 */
@Service("CoreTeamService")
@Transactional
public class CoreTeamService {
    @Resource
    private CoreTeamDao coreTeamDao;
    public CoreTeamBo queryCoreTeam(Integer id){
        return coreTeamDao.queryCoreTeam(id);
    }
    public  void updateCoreTeam (CoreTeamBo coreTeam){

        coreTeamDao.updateCoreTeam(coreTeam);
       }
    public  void deleteCoreTeam(Integer id){

        coreTeamDao.deleteCoreTeam(id);
    }
    public  void addCoreTeam(CoreTeamBo coreTeam){
        // 添加数据
        coreTeamDao.addCoreTeam(coreTeam);
    }
    public List<EmployeeBo> queryEmloyee(){
        return  coreTeamDao.queryEmployee();
    }
    public  CoreTeamBo queryHomeCoreTeam(){
        return  coreTeamDao.queryHomeCoreTeam();
    }
}
