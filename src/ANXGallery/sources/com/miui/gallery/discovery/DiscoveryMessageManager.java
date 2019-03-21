package com.miui.gallery.discovery;

import android.content.Context;
import android.database.Cursor;
import android.util.SparseArray;
import com.miui.gallery.loader.DiscoveryMessageLoader;
import com.miui.gallery.loader.DiscoveryMessageLoader.ForceLoadContentObserver;
import com.miui.gallery.model.DiscoveryMessage;
import com.miui.gallery.model.DiscoveryMessage.Builder;
import com.miui.gallery.provider.GalleryContract;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import com.nexstreaming.nexeditorsdk.nexExportFormat;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public class DiscoveryMessageManager {
    public static final String[] PROJECTION = new String[]{"_id", nexExportFormat.TAG_FORMAT_TYPE, "actionUri", "messageSource", "message", "title", "subTitle", "priority", "expireTime", "receiveTime", "updateTime", "triggerTime", "isConsumed", "extraData"};
    private static ArrayList<ForceLoadContentObserver> sContentObserverList;
    private static LoaderFactory sFactory;
    private static SparseArray<BaseMessageOperator> sMessageOperators;
    private static final Object sSyncLock = new Object();

    public interface MessageFilter {
        boolean accept(DiscoveryMessage discoveryMessage);
    }

    private static class Holder {
        static final DiscoveryMessageManager INSTANCE = new DiscoveryMessageManager();
    }

    private static class LoaderFactory {
        private LoaderFactory() {
        }

        /* synthetic */ LoaderFactory(AnonymousClass1 x0) {
            this();
        }

        public DiscoveryMessageLoader createLoader(Context context, int displayScene) {
            switch (displayScene) {
                case 1:
                    return new DiscoveryMessageLoader(context, 3);
                default:
                    return null;
            }
        }
    }

    private class MarkMsgAsReadJob implements Job<Void> {
        protected WeakReference<Context> mContextRef;
        private List<DiscoveryMessage> mMessages;

        MarkMsgAsReadJob(Context context) {
            this.mContextRef = new WeakReference(context);
        }

        MarkMsgAsReadJob(Context context, DiscoveryMessage... messages) {
            this.mContextRef = new WeakReference(context);
            if (messages != null && messages.length > 0) {
                this.mMessages = Arrays.asList(messages);
            }
        }

        protected List<DiscoveryMessage> getMessages() {
            return this.mMessages;
        }

        public Void run(JobContext jc) {
            if (!(jc == null || jc.isCancelled())) {
                Context context = (Context) this.mContextRef.get();
                if (context != null) {
                    List<DiscoveryMessage> messages = getMessages();
                    if (BaseMiscUtil.isValid(messages)) {
                        for (DiscoveryMessage message : messages) {
                            DiscoveryMessageManager.this.markAsRead(context, message);
                        }
                    }
                }
            }
            return null;
        }
    }

    private class MarkMsgAsReadByTypeJob extends MarkMsgAsReadJob {
        private int mMsgType;

        MarkMsgAsReadByTypeJob(Context context, int msgType) {
            super(context);
            this.mMsgType = msgType;
        }

        protected List<DiscoveryMessage> getMessages() {
            Context context = (Context) this.mContextRef.get();
            return context != null ? DiscoveryMessageManager.this.loadMessage(context, this.mMsgType) : null;
        }
    }

    /* synthetic */ DiscoveryMessageManager(AnonymousClass1 x0) {
        this();
    }

    private DiscoveryMessageManager() {
        sMessageOperators = new SparseArray();
        sContentObserverList = new ArrayList();
        sFactory = new LoaderFactory();
        registerMessageOperator(1, new RecentDiscoveryMessageOperator());
    }

    public static DiscoveryMessageManager getInstance() {
        return Holder.INSTANCE;
    }

    private void registerMessageOperator(int msgType, BaseMessageOperator operator) {
        sMessageOperators.put(msgType, operator);
    }

    private BaseMessageOperator findMessageOperatorByType(int type) {
        return sMessageOperators != null ? (BaseMessageOperator) sMessageOperators.get(type) : null;
    }

    public DiscoveryMessageLoader createLoader(Context context, int displayScene) {
        return sFactory.createLoader(context, displayScene);
    }

    public void registerContentObserver(ForceLoadContentObserver observer) {
        if (observer == null) {
            throw new IllegalArgumentException("The observer is null.");
        }
        synchronized (sSyncLock) {
            if (sContentObserverList.contains(observer)) {
                Log.w("DiscoveryMessageManager", "Observer [%s] is already registered.", Integer.toHexString(System.identityHashCode(observer)));
            } else {
                sContentObserverList.add(observer);
            }
        }
    }

    public void unregisterContentObserver(ForceLoadContentObserver observer) {
        if (observer == null) {
            throw new IllegalArgumentException("The observer is null.");
        }
        synchronized (sSyncLock) {
            int index = sContentObserverList.indexOf(observer);
            if (index == -1) {
                Log.w("DiscoveryMessageManager", "Observer [%s] is already unregistered.", Integer.toHexString(System.identityHashCode(observer)));
            } else {
                sContentObserverList.remove(index);
            }
        }
    }

    private void notifyChangeByMessageType(int msgType) {
        synchronized (sSyncLock) {
            Iterator it = sContentObserverList.iterator();
            while (it.hasNext()) {
                final ForceLoadContentObserver observer = (ForceLoadContentObserver) it.next();
                if ((observer.getMessageTypeMask() & msgType) != 0) {
                    ThreadManager.getMainHandler().post(new Runnable() {
                        public void run() {
                            observer.onChange(false);
                        }
                    });
                }
            }
        }
    }

    private Comparator<DiscoveryMessage> createComparatorByType(int msgTypeMask) {
        return new Comparator<DiscoveryMessage>() {
            public int compare(DiscoveryMessage lhs, DiscoveryMessage rhs) {
                int i = 1;
                if (lhs.getPriority() != rhs.getPriority()) {
                    if (lhs.getPriority() <= rhs.getPriority()) {
                        i = -1;
                    }
                    return i;
                } else if (lhs.getUpdateTime() == rhs.getUpdateTime()) {
                    return 0;
                } else {
                    if (lhs.getUpdateTime() <= rhs.getUpdateTime()) {
                        return 1;
                    }
                    return -1;
                }
            }
        };
    }

    private MessageFilter createFilterByType(int msgTypeMask) {
        return new MessageFilter() {
            public boolean accept(DiscoveryMessage message) {
                return !message.isConsumed();
            }
        };
    }

    public ArrayList<DiscoveryMessage> loadMessage(Context context, int messageTypeMask) {
        if (context == null) {
            return null;
        }
        Cursor cursor = context.getContentResolver().query(GalleryContract.DiscoveryMessage.URI, PROJECTION, "(type & " + messageTypeMask + ") != 0", null, null);
        ArrayList<DiscoveryMessage> discoveryMessages = new ArrayList();
        if (cursor == null) {
            return discoveryMessages;
        }
        try {
            Comparator<DiscoveryMessage> comparator = createComparatorByType(messageTypeMask);
            MessageFilter filter = createFilterByType(messageTypeMask);
            while (cursor.moveToNext()) {
                Builder builder = new Builder();
                builder.consumed(cursor.getInt(12) > 0).type(cursor.getInt(1)).actionUri(cursor.getString(2)).message(cursor.getString(4)).expireTime(cursor.getLong(8)).triggerTime(cursor.getLong(11)).updateTime(cursor.getLong(10)).title(cursor.getString(5)).subTitle(cursor.getString(6)).priority(cursor.getInt(7)).receiveTime(cursor.getLong(9)).messageSource(cursor.getString(3)).messageId(cursor.getLong(0));
                DiscoveryMessage message = builder.build();
                wrapMessage(message, cursor.getString(13));
                if (filter != null && filter.accept(message)) {
                    discoveryMessages.add(message);
                }
            }
            if (comparator != null) {
                Collections.sort(discoveryMessages, comparator);
            }
            cursor.close();
            return discoveryMessages;
        } catch (Exception ex) {
            Log.e("DiscoveryMessageManager", "encounter error when load messages:\n%s", ex.getMessage());
            ex.printStackTrace();
            cursor.close();
            return discoveryMessages;
        } catch (Throwable th) {
            cursor.close();
            throw th;
        }
    }

    public <T> void saveMessage(Context context, int msgType, T saveParams) {
        if (context != null && saveParams != null) {
            BaseMessageOperator messageOperator = findMessageOperatorByType(msgType);
            if (messageOperator != null) {
                try {
                    if (messageOperator.saveMessage(context, saveParams)) {
                        notifyChangeByMessageType(msgType);
                    }
                } catch (ClassCastException e) {
                    Log.e("DiscoveryMessageManager", "Generic type saveParams doesn't match the generic type defined in concrete implementation of BaseMessageOperator");
                    e.printStackTrace();
                }
            }
        }
    }

    public void markAsRead(Context context, DiscoveryMessage message) {
        if (context != null && message != null && message.getMessageId() > 0) {
            BaseMessageOperator messageOperator = findMessageOperatorByType(message.getType());
            if (messageOperator != null && messageOperator.markMessageAsRead(context, message)) {
                notifyChangeByMessageType(message.getType());
            }
        }
    }

    public void markAsReadAsync(Context context, DiscoveryMessage message) {
        if (context != null && message != null) {
            ThreadManager.getMiscPool().submit(new MarkMsgAsReadJob(context, message));
        }
    }

    public void markAsReadByTypeAsync(Context context, int msgType) {
        if (context != null) {
            ThreadManager.getMiscPool().submit(new MarkMsgAsReadByTypeJob(context, msgType));
        }
    }

    private void wrapMessage(DiscoveryMessage message, String extraDataJson) {
        BaseMessageOperator messageOperator = findMessageOperatorByType(message.getType());
        if (messageOperator != null) {
            messageOperator.wrapMessage(message, extraDataJson);
        }
    }
}
