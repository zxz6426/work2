package com.lyf.book.service.impl;

import com.lyf.book.mapper.SnackMapper;
import com.lyf.book.pojo.Snack;
import com.lyf.book.service.SnackService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SnackServiceImpl implements SnackService {
    @Autowired
    private SnackMapper snackMapper;

    public List<Snack> querySnacks() {
        return snackMapper.querySnacks();
    }

    public boolean addSnacks(Snack b) { return snackMapper.addSnacks(b) > 0;}

    public boolean deleteSnacks(int bid) {
        return snackMapper.deleteSnacks(new Snack(bid)) > 0;
    }

    public boolean updateSnacks(Snack b) { return  snackMapper.updateSnacks(b);}

}
