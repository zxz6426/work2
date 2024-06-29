package com.lyf.book.service;

import com.lyf.book.pojo.Snack;

import java.util.List;

/**
 * 零食业务层
 */
public interface SnackService {

    /**
     * 查询所有零食信息
     * @return
     */
    List<Snack> querySnacks();

    /**
     * 保存零食信息
     * @param b
     * @return
     */
    boolean addSnacks(Snack b);

    /**
     * 删除零食信息
     * @param bid
     * @return
     */
    boolean deleteSnacks(int bid);
    /**
     * 修改零食信息
     * @param b
     * @return
     */
    boolean updateSnacks(Snack b);
}
