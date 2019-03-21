package com.xiaomi.channel.commonutils.stats;

import java.util.LinkedList;

public class Stats {
    private LinkedList<Item> statsQueue = new LinkedList();

    public static class Item {
        private static final Stats sStats = new Stats();
        public String annotation;
        public int key;
        public Object obj;

        Item(int key, Object obj) {
            this.key = key;
            this.obj = obj;
        }
    }

    public static Stats instance() {
        return Item.sStats;
    }

    public synchronized void stat(Object obj) {
        this.statsQueue.add(new Item(0, obj));
        checkSize();
    }

    private void checkSize() {
        if (this.statsQueue.size() > 100) {
            this.statsQueue.removeFirst();
        }
    }

    public synchronized int getCount() {
        return this.statsQueue.size();
    }

    public synchronized LinkedList<Item> getStats() {
        LinkedList<Item> items;
        items = this.statsQueue;
        this.statsQueue = new LinkedList();
        return items;
    }
}
