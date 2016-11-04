package com.weikun.vo;

import java.util.ArrayList;
import java.util.HashMap;

/**
 * Created by Administrator on 2016/11/4.
 */
public class portal {
    private String value;
    private String kind;

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }
    private HashMap<String,String> values;

    public HashMap<String, String> getValues() {
        return values;
    }



    public String getKind() {
        return kind;
    }
    private ArrayList<String> list=null;
    private String[] games;

    public ArrayList<String> getList() {
        return list;
    }

    public void setList(ArrayList<String> list) {
        this.list = list;
    }

    public String[] getGames() {
        return games;
    }

    public void setGames(String[] games) {
        this.games = games;
    }

    public void setKind(String kind) {
        if(kind.equals("news")){
            value="今天雾霾";
        }else if(kind.equals("game")){
            values=new HashMap<>();
            values.put("cs","反恐精英");
            values.put("lol","英雄联盟111");
            values.put("cf","穿越火线");




            list=new ArrayList<String>();
            list.add("lol");
            list.add("CF");
            list.add("斗地主");

            games=new String[3];
            games[0]="天天酷跑";
            games[1]="天天飞车";
            games[2]="欢乐麻将";
        }
        this.kind = kind;
    }
}
