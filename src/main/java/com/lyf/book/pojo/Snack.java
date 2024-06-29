package com.lyf.book.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * 零食实体类
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Snack {
  private int bid;
  private String bname;
  private String bauthor;
  @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm")
  private Date btime;
  private String btype;


//  private String b_name;
//  private String b_author;
//  private String b_time;
//  private String b_type;


  public Snack(int bid) {
    this.bid = bid;
  }
}
