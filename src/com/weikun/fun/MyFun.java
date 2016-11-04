package com.weikun.fun;

/**
 * Created by Administrator on 2016/11/4.
 */
public class MyFun {
    public static String reverse(String txt){
        return new StringBuffer(txt).reverse().toString();
    }
    public static int count(String txt){
        return txt.length();
    }
}
