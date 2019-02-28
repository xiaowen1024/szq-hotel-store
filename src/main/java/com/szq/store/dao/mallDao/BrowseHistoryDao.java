package com.szq.store.dao.mallDao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by shishiming on 2018/9/1.
 */
public interface BrowseHistoryDao {
    List<HashMap<String,Object>> getBrowseHistoryList(Map<String, Object> map);
    int getBrowseHistoryListCount(Map<String, Object> map);
}
