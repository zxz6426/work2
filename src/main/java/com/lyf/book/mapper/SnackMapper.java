package com.lyf.book.mapper;

import com.lyf.book.pojo.Snack;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 零食操作接口
 */
public interface SnackMapper {
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
    int addSnacks(Snack b);

    /**
     * 删除零食信息
     * @param b
     * @return
     */
    int deleteSnacks(Snack b);

    /**
     * 修改零食信息
     * @param b
     * @return
     */
    boolean updateSnacks(Snack b);

//    boolean selectSnacks(Snack b);


}
