package com.weikun.vo;

import java.io.Serializable;

/**
 * Created by Administrator on 2016/11/4.
 */
public class User implements Serializable {
    public User(){

    }
    public User(String username, String pwd) {
        this.username = username;
        this.pwd = pwd;
    }

    private String username;
    private String pwd;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }
}
