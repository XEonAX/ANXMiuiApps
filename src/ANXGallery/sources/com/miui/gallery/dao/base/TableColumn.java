package com.miui.gallery.dao.base;

public class TableColumn {
    protected String defaultValue;
    protected boolean isUnique = false;
    protected String name;
    protected String type;

    public TableColumn(String name, String type) {
        this.name = name;
        this.type = type;
    }

    public TableColumn(String name, String type, String defaultValue) {
        this.name = name;
        this.type = type;
        this.defaultValue = defaultValue;
    }

    public TableColumn(String name, String type, boolean isUnique) {
        this.name = name;
        this.type = type;
        this.isUnique = isUnique;
    }
}
