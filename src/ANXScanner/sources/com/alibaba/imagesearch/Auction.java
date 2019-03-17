package com.alibaba.imagesearch;

import java.io.Serializable;

public class Auction implements Serializable {
    public AuctionItem auctionItem;
    public String queryImage;

    public String toString() {
        return "Auction{queryImage='" + this.queryImage + '\'' + ", auctionItem=" + this.auctionItem + '}';
    }
}
