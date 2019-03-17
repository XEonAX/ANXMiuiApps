package com.ali.auth.third.core.message;

import com.ali.auth.third.core.context.KernelContext;
import com.ali.auth.third.core.trace.SDKLogger;
import com.ali.auth.third.core.util.ResourceUtils;
import com.xiaomi.scanner.camera.exif.ExifInterface.GpsLongitudeRef;
import java.text.MessageFormat;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.ReentrantReadWriteLock;

public class MessageUtils {
    private static Map<Integer, Message> a = new HashMap();
    private static ReentrantReadWriteLock b = new ReentrantReadWriteLock();
    private static final Message c = new Message();
    private static final Message d = new Message();
    private static Message e;
    private static Message f;
    private static final Object g = new Object();

    static {
        c.code = 1;
        c.message = "未在消息文件中找到 id 为 {0} 的消息";
        c.action = "请检查所依赖的 SDK 项目，或若是手动拷贝 SDK 至当前开发应用所在项目，请检查是否漏拷文件 res/values 下文件";
        c.type = GpsLongitudeRef.EAST;
        d.code = 2;
        d.message = "检索消息时发生如下错误 {0}";
        d.action = "请检查所依赖的 SDK 项目，或若是手动拷贝 SDK 至当前开发应用所在项目，请检查是否漏拷文件 res/values 下文件";
        d.type = GpsLongitudeRef.EAST;
    }

    private static Message a(int i) {
        if (e == null) {
            synchronized (g) {
                if (e == null) {
                    e = b(1);
                    if (e == null) {
                        e = c;
                    }
                }
            }
        }
        try {
            Message message = (Message) e.clone();
            message.message = MessageFormat.format(message.message, new Object[]{String.valueOf(i)});
            return message;
        } catch (CloneNotSupportedException e) {
            return e;
        }
    }

    private static Message a(String str) {
        if (f == null) {
            synchronized (g) {
                if (f == null) {
                    f = b(2);
                    if (f == null) {
                        f = d;
                    }
                }
            }
        }
        try {
            Message message = (Message) f.clone();
            message.message = MessageFormat.format(message.message, new Object[]{str});
            return message;
        } catch (CloneNotSupportedException e) {
            return f;
        }
    }

    private static Message b(int i) {
        try {
            if (ResourceUtils.getIdentifier(KernelContext.getApplicationContext(), "string", "auth_sdk_message_" + i + "_message") == 0) {
                return null;
            }
            Message message = new Message();
            message.code = i;
            message.message = ResourceUtils.getString(KernelContext.getApplicationContext(), "auth_sdk_message_" + i + "_message");
            if (ResourceUtils.getIdentifier(KernelContext.getApplicationContext(), "string", "auth_sdk_message_" + i + "_action") != 0) {
                message.action = ResourceUtils.getString(KernelContext.getApplicationContext(), "auth_sdk_message_" + i + "_action");
            } else {
                message.action = "";
            }
            if (ResourceUtils.getIdentifier(KernelContext.getApplicationContext(), "string", "auth_sdk_message_" + i + "_type") != 0) {
                message.type = ResourceUtils.getString(KernelContext.getApplicationContext(), "auth_sdk_message_" + i + "_type");
            } else {
                message.type = "I";
            }
            return message;
        } catch (Exception e) {
            SDKLogger.e("kernel", "Fail to get message of the code " + i + ", the error message is " + e.getMessage());
            return null;
        }
    }

    public static Message createMessage(int i, Object... objArr) {
        try {
            Message b;
            b.readLock().lock();
            Message message = (Message) a.get(Integer.valueOf(i));
            if (message == null) {
                b.readLock().unlock();
                b.writeLock().lock();
                b = b(i);
                if (b != null) {
                    a.put(Integer.valueOf(i), b);
                }
                b.readLock().lock();
                b.writeLock().unlock();
            } else {
                b = message;
            }
            if (b == null) {
                message = a(i);
                b.readLock().unlock();
                return message;
            } else if (objArr.length == 0) {
                b.readLock().unlock();
                return b;
            } else {
                message = (Message) b.clone();
                message.message = MessageFormat.format(b.message, objArr);
                b.readLock().unlock();
                return message;
            }
        } catch (Exception e) {
            return a(e.getMessage());
        } catch (Throwable th) {
            b.writeLock().unlock();
        }
    }

    public static String getMessageContent(int i, Object... objArr) {
        try {
            b.readLock().lock();
            Message message = (Message) a.get(Integer.valueOf(i));
            if (message == null) {
                b.readLock().unlock();
                b.writeLock().lock();
                message = b(i);
                if (message != null) {
                    a.put(Integer.valueOf(i), message);
                }
                b.readLock().lock();
                b.writeLock().unlock();
            }
            String str;
            if (message == null) {
                str = a(i).message;
                b.readLock().unlock();
                return str;
            }
            str = MessageFormat.format(message.message, objArr);
            b.readLock().unlock();
            return str;
        } catch (Exception e) {
            return a(e.getMessage()).message;
        } catch (Throwable th) {
            b.writeLock().unlock();
        }
    }
}
