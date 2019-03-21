package com.miui.gallery.sdk.download.executor.queue;

import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;

public class Queue<T extends Command> {
    private final LinkedList<T> mList = new LinkedList();
    private final HashMap<String, T> mMap = new HashMap();
    private final int mMaxSize;

    public Queue(int maxSize) {
        this.mMaxSize = maxSize;
    }

    public T get(String key) {
        return (Command) this.mMap.get(key);
    }

    public int size() {
        return this.mMap.size();
    }

    public T remove(String key) {
        Command cmd = (Command) this.mMap.remove(key);
        if (cmd != null) {
            this.mList.remove(cmd);
        }
        return cmd;
    }

    public void clear() {
        this.mMap.clear();
        this.mList.clear();
    }

    public Collection<T> values() {
        return Collections.unmodifiableCollection(this.mMap.values());
    }

    public List<T> poll(int limit) {
        LinkedList<T> result = new LinkedList();
        ListIterator<T> it = this.mList.listIterator();
        while (it.hasNext() && result.size() < limit) {
            Command c = (Command) it.next();
            result.add(c);
            it.remove();
            this.mMap.remove(c.getKey());
        }
        return result;
    }

    public int putAtFirst(List<T> list) {
        ListIterator<T> it = list.listIterator(0);
        int addCount = 0;
        while (it.hasNext()) {
            addCount += putInternal((Command) it.next(), true) ? 1 : 0;
        }
        return addCount;
    }

    public int putAtLast(List<T> list) {
        ListIterator<T> it = list.listIterator(0);
        int addCount = 0;
        while (it.hasNext()) {
            addCount += putInternal((Command) it.next(), false) ? 1 : 0;
        }
        return addCount;
    }

    private boolean putInternal(T cmd, boolean atFirst) {
        if (!needAdd(cmd)) {
            return false;
        }
        this.mMap.put(cmd.getKey(), cmd);
        if (atFirst) {
            this.mList.addFirst(cmd);
            if (this.mMaxSize > 0 && size() > this.mMaxSize) {
                this.mMap.remove(((Command) this.mList.removeLast()).getKey());
            }
        } else {
            this.mList.addLast(cmd);
        }
        return true;
    }

    private boolean needAdd(T cmd) {
        Command old = (Command) this.mMap.get(cmd.getKey());
        if (old == null) {
            return true;
        }
        if (old.getPriority() >= cmd.getPriority()) {
            return false;
        }
        remove(old);
        return true;
    }

    private void remove(T cmd) {
        this.mMap.remove(cmd.getKey());
        this.mList.remove(cmd);
    }
}
