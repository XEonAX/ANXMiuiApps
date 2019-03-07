package com.miui.screenrecorder.data;

public class GridItem {
    private String duration;
    private int headerId = -1;
    private String name;
    private String path;
    private String size;
    private String thumbnailPath;
    private String time;

    public GridItem(String path, String time, String size, String name, String duration, String thumbnailPath) {
        this.path = path;
        this.time = time;
        this.size = size;
        this.name = name;
        this.duration = duration;
        this.thumbnailPath = thumbnailPath;
    }

    public GridItem(GridItem item) {
        this.path = item.path;
        this.time = item.time;
        this.size = item.size;
        this.name = item.name;
        this.duration = item.duration;
        this.thumbnailPath = item.thumbnailPath;
        this.headerId = item.headerId;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (other instanceof GridItem) {
            GridItem item = (GridItem) other;
            if (equals(this.path, item.path) && equals(this.time, item.time) && equals(this.size, item.size) && equals(this.name, item.name) && equals(this.duration, item.duration)) {
                return true;
            }
        }
        return false;
    }

    private boolean equals(String value1, String value2) {
        if (value1 == null && value2 == null) {
            return true;
        }
        if (value1 == null || !value1.equals(value2)) {
            return false;
        }
        return true;
    }

    public String getPath() {
        return this.path;
    }

    public String getTime() {
        return this.time;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public int getHeaderId() {
        return this.headerId;
    }

    public void setHeaderId(int id) {
        this.headerId = id;
    }

    public String getSize() {
        return this.size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDuration() {
        return this.duration;
    }

    public void setDuration(String howLong) {
        this.duration = howLong;
    }

    public void setThumbnailPath(String path) {
        this.thumbnailPath = path;
    }

    public String getThumbnailPath() {
        return this.thumbnailPath;
    }
}
