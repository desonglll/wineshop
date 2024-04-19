package com.wineshop.util;

import com.wineshop.model.AboutUs;

import java.util.List;

public class Demo {

    public static void main(String[] args) {
        //新增 ctrl+alt+v
        DbUtils dbUtils = new DbUtils();
//        AboutUs us=new AboutUs();
//        us.setAddress("zhengzou");
//        us.setInfo("xinxi");
//        boolean bs= dbUtils.save("insert into about_us (info,address) values(?,?)","zhengzhou","xinxi");
//        System.out.println(bs);

        //查询
        List<AboutUs> list= dbUtils.list(AboutUs.class,"select * from about_us",null);
        System.out.println(list);
    }
}
