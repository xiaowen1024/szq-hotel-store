package com.szq.store.dao;


import com.szq.store.entity.bo.ChairmanSpeechBo;

/**
 * Created by yxw on 2018/7/18.
 */
public interface ChairmanSpeechDao {
    public ChairmanSpeechBo queryChairmanSpeechDetailById(Integer id);
    public void updateChairmanSpeech(ChairmanSpeechBo ChairmanSpeech);
    public  void addChairmanSpeech(ChairmanSpeechBo ChairmanSpeech);
    public void deleteChairmanSpeech(Integer Id);
    public ChairmanSpeechBo queryChairmanSpeechDetail();
}
