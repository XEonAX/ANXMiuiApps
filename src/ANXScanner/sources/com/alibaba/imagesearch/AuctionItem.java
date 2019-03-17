package com.alibaba.imagesearch;

import java.io.Serializable;

public class AuctionItem implements Serializable {
    public String itemId;
    public String location;
    public String price;
    public String sold;
    public String thumbnail;
    public String title;
    public String url;

    public String toString() {
        return "AuctionItem{title='" + this.title + '\'' + ", url='" + this.url + '\'' + ", price='" + this.price + '\'' + ", thumbnail='" + this.thumbnail + '\'' + ", itemId='" + this.itemId + '\'' + ", location='" + this.location + '\'' + ", sold='" + this.sold + '\'' + '}';
    }
}
