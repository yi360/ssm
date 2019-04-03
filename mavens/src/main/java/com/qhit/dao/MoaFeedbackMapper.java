package com.qhit.dao;

import com.qhit.pojo.MoaFeedback;

public interface MoaFeedbackMapper {
    int insert(MoaFeedback record);

    int insertSelective(MoaFeedback record);
}