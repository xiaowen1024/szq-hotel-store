package com.szq.store.service.mallService;

import com.szq.store.dao.mallDao.BrowseHistoryDao;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by shishiming on 2018/8/2.
 */
@Service("browseHistoryService")
@Transactional
public class BrowseHistoryService {

    @Resource
    private BrowseHistoryDao browseHistoryDao;

    public List<HashMap<String,Object>> getBrowseHistoryList(Map<String,Object> map){
        return browseHistoryDao.getBrowseHistoryList(map);
    }

    public int getBrowseHistoryListCount(Map<String,Object> map){
        return browseHistoryDao.getBrowseHistoryListCount(map);
    }
}
