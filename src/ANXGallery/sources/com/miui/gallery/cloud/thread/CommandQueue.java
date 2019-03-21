package com.miui.gallery.cloud.thread;

import android.os.SystemClock;
import com.google.common.collect.Maps;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;

public class CommandQueue<T extends Command> {
    private final LinkedList<T>[] mLists;
    private final HashMap<String, T> mMap = Maps.newHashMap();
    private final int mMaxSize;

    public interface OnQueueChangedListener<T extends Command> {
        void onAdd(T t);

        void onRemove(T t);
    }

    public CommandQueue(int priorityCount, int maxSize) {
        this.mLists = new LinkedList[priorityCount];
        this.mMaxSize = maxSize;
    }

    public int size() {
        return this.mMap.size();
    }

    public T remove(String key) {
        Command cmd = (Command) this.mMap.remove(key);
        if (cmd != null) {
            this.mLists[cmd.getPriority()].remove(cmd);
        }
        return cmd;
    }

    public Collection<T> values() {
        return Collections.unmodifiableCollection(this.mMap.values());
    }

    public void poll(List<T> result, int limit, long now) {
        for (int i = this.mLists.length - 1; i >= 0; i--) {
            LinkedList<T> l = this.mLists[i];
            if (!(l == null || l.isEmpty())) {
                T first = null;
                ListIterator<T> it = l.listIterator();
                while (it.hasNext() && result.size() < limit) {
                    T c = (Command) it.next();
                    boolean executable = false;
                    if (first == null) {
                        if (c.getDelay(now) <= 0) {
                            first = c;
                            executable = true;
                        }
                    } else if (!first.canMergeWith(c)) {
                        break;
                    } else if (c.getDelay(now) <= 0) {
                        executable = true;
                    }
                    if (executable) {
                        result.add(c);
                        it.remove();
                        this.mMap.remove(c.getKey());
                    } else if (first != null) {
                        break;
                    }
                }
                if (!result.isEmpty()) {
                    return;
                }
            }
        }
    }

    public long getMinDelay(long now) {
        long delay = Long.MAX_VALUE;
        for (Command c : this.mMap.values()) {
            long thisDelay = c.getDelay(now);
            if (delay > thisDelay) {
                delay = thisDelay;
            }
        }
        return delay;
    }

    public boolean hasDelayedItem() {
        long now = SystemClock.uptimeMillis();
        for (Command c : this.mMap.values()) {
            if (c.getDelay(now) > 0) {
                return true;
            }
        }
        return false;
    }

    public int putAtFrist(List<T> list, long now, OnQueueChangedListener<T> l) {
        ListIterator<T> it = list.listIterator(list.size());
        int addCount = 0;
        while (it.hasPrevious()) {
            addCount += putInternal((Command) it.previous(), true, now, l) ? 1 : 0;
        }
        return addCount;
    }

    public int putAtLast(List<T> list, long now, OnQueueChangedListener<T> l) {
        ListIterator<T> it = list.listIterator(0);
        int addCount = 0;
        while (it.hasNext()) {
            addCount += putInternal((Command) it.next(), false, now, l) ? 1 : 0;
        }
        return addCount;
    }

    private boolean putInternal(T cmd, boolean atFirst, long now, OnQueueChangedListener<T> l) {
        if (!needAdd(cmd, now, l)) {
            return false;
        }
        if (l != null) {
            l.onAdd(cmd);
        }
        this.mMap.put(cmd.getKey(), cmd);
        int p = cmd.getPriority();
        if (this.mLists[p] == null) {
            this.mLists[p] = new LinkedList();
        }
        if (atFirst) {
            this.mLists[p].addFirst(cmd);
            if (this.mMaxSize > 0 && size() > this.mMaxSize) {
                this.mMap.remove(((Command) this.mLists[p].removeLast()).getKey());
            }
        } else {
            this.mLists[p].addLast(cmd);
        }
        return true;
    }

    private boolean needAdd(T cmd, long now, OnQueueChangedListener<T> l) {
        Command old = (Command) this.mMap.get(cmd.getKey());
        if (old == null) {
            return true;
        }
        if (old.getDelay(now) <= cmd.getDelay(now) && old.getPriority() >= cmd.getPriority() && !old.needProcess()) {
            return false;
        }
        if (l != null) {
            l.onRemove(old);
        }
        remove(old);
        return true;
    }

    private void remove(T cmd) {
        this.mMap.remove(cmd.getKey());
        LinkedList<T> list = this.mLists[cmd.getPriority()];
        if (list != null) {
            list.remove(cmd);
        }
    }
}
