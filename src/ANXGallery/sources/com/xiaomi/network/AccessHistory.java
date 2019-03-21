package com.xiaomi.network;

import org.json.JSONException;
import org.json.JSONObject;

public class AccessHistory {
    private long cost;
    private String exceptionName;
    private long size;
    private long ts;
    private int weight;

    public AccessHistory() {
        this(0, 0, 0, null);
    }

    public AccessHistory(int weight, long cost, long size, Exception e) {
        this.weight = weight;
        this.cost = cost;
        this.size = size;
        this.ts = System.currentTimeMillis();
        if (e != null) {
            this.exceptionName = e.getClass().getSimpleName();
        }
    }

    public int getWeight() {
        return this.weight;
    }

    public JSONObject toJSON() throws JSONException {
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("cost", this.cost);
        jsonObject.put("size", this.size);
        jsonObject.put("ts", this.ts);
        jsonObject.put("wt", this.weight);
        jsonObject.put("expt", this.exceptionName);
        return jsonObject;
    }

    public AccessHistory fromJSON(JSONObject json) throws JSONException {
        this.cost = json.getLong("cost");
        this.size = json.getLong("size");
        this.ts = json.getLong("ts");
        this.weight = json.getInt("wt");
        this.exceptionName = json.optString("expt");
        return this;
    }
}
