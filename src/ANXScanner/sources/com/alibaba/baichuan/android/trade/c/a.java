package com.alibaba.baichuan.android.trade.c;

import com.alibaba.baichuan.android.trade.AlibcContext;
import com.alibaba.baichuan.trade.common.utils.AlibcLogger;
import com.alibaba.baichuan.trade.common.utils.ResourceUtils;
import com.xiaomi.scanner.camera.exif.ExifInterface.GpsLongitudeRef;
import java.text.MessageFormat;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.ReentrantReadWriteLock;

public class a {
    private static Map<Integer, a> a = new HashMap();
    private static ReentrantReadWriteLock b = new ReentrantReadWriteLock();
    private static final a c = new a();
    private static final a d = new a();
    private static volatile a e;
    private static volatile a f;
    private static final Object g = new Object();

    public static class a implements Cloneable {
        public int a;
        public String b;
        public String c;
        public String d;

        public static a a(int i, Object... objArr) {
            return a.a(i, objArr);
        }

        public Object clone() {
            return super.clone();
        }
    }

    static {
        c.a = 1;
        c.c = "未在消息文件中找到 id 为 {0} 的消息";
        c.d = "请检查所依赖的 SDK 项目，或若是手动拷贝 SDK 至当前开发应用所在项目，请检查是否漏拷文件 res/values 下文件";
        c.b = GpsLongitudeRef.EAST;
        d.a = 2;
        d.c = "检索消息时发生如下错误 {0}";
        d.d = "请检查所依赖的 SDK 项目，或若是手动拷贝 SDK 至当前开发应用所在项目，请检查是否漏拷文件 res/values 下文件";
        d.b = GpsLongitudeRef.EAST;
    }

    private static a a(int i) {
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
            a aVar = (a) e.clone();
            aVar.c = MessageFormat.format(aVar.c, new Object[]{String.valueOf(i)});
            return aVar;
        } catch (CloneNotSupportedException e) {
            return e;
        }
    }

    public static a a(int i, Object... objArr) {
        try {
            b.readLock().lock();
            a aVar = (a) a.get(Integer.valueOf(i));
            if (aVar == null) {
                b.readLock().unlock();
                b.writeLock().lock();
                aVar = b(i);
                if (aVar != null) {
                    a.put(Integer.valueOf(i), aVar);
                }
                b.readLock().lock();
                b.writeLock().unlock();
            }
            if (aVar == null) {
                aVar = a(i);
                b.readLock().unlock();
                return aVar;
            } else if (objArr.length == 0) {
                b.readLock().unlock();
                return aVar;
            } else {
                aVar = (a) aVar.clone();
                aVar.c = MessageFormat.format(aVar.c, objArr);
                b.readLock().unlock();
                return aVar;
            }
        } catch (Exception e) {
            AlibcLogger.e("AlibcMessageUtils", e.toString());
            return a(e.getMessage());
        } catch (Throwable th) {
            b.writeLock().unlock();
        }
    }

    private static a a(String str) {
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
            a aVar = (a) f.clone();
            aVar.c = MessageFormat.format(aVar.c, new Object[]{str});
            return aVar;
        } catch (CloneNotSupportedException e) {
            return f;
        }
    }

    private static a b(int i) {
        try {
            int identifier = ResourceUtils.getIdentifier(AlibcContext.context, "string", "alisdk_message_" + i + "_message");
            if (identifier == 0) {
                return null;
            }
            a aVar = new a();
            aVar.a = i;
            aVar.c = AlibcContext.context.getResources().getString(identifier);
            identifier = ResourceUtils.getIdentifier(AlibcContext.context, "string", "alisdk_message_" + i + "_action");
            if (identifier != 0) {
                aVar.d = AlibcContext.context.getResources().getString(identifier);
            } else {
                aVar.d = "";
            }
            identifier = ResourceUtils.getIdentifier(AlibcContext.context, "string", "alisdk_message_" + i + "_type");
            if (identifier != 0) {
                aVar.b = AlibcContext.context.getResources().getString(identifier);
            } else {
                aVar.b = "I";
            }
            return aVar;
        } catch (Exception e) {
            AlibcLogger.e("kernel", "Fail to get message of the code " + i + ", the error message is " + e.getMessage());
            return null;
        }
    }
}
