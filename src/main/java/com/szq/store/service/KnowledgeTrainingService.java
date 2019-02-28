package com.szq.store.service;

import com.szq.store.dao.KnowledgeTrainingDao;
import com.szq.store.entity.bo.KnowledgeTrainingBo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by yxw on 2018/7/31.
 */
@Service("KnowledgeTrainingService")
@Transactional
public class KnowledgeTrainingService {
    @Resource
    private KnowledgeTrainingDao knowledgeTrainingDao;
    public KnowledgeTrainingBo queryknowledgeTraining(Integer id){
        return  knowledgeTrainingDao.queryknowledgeTraining(id);
    }

    public List<KnowledgeTrainingBo> queryknowledgeTrainingDetail(){
         return knowledgeTrainingDao.queryknowledgeTrainingDetail();
    }
    public void updateknowledgeTraining(KnowledgeTrainingBo knowledgeTraining){
              knowledgeTrainingDao.updateknowledgeTraining(knowledgeTraining);
    }
    public  void addknowledgeTraining(KnowledgeTrainingBo knowledgeTraining){
             knowledgeTrainingDao.addknowledgeTraining(knowledgeTraining);
    }
    public void deleteknowledgeTraining(Integer id){
         knowledgeTrainingDao.deleteknowledgeTraining(id);
    }
}
