package com.alibaba.mtl.appmonitor;

import com.alibaba.mtl.appmonitor.a.e;
import com.alibaba.mtl.appmonitor.a.f;
import com.alibaba.mtl.appmonitor.b.b;
import com.alibaba.mtl.appmonitor.d.j;
import com.alibaba.mtl.appmonitor.model.DimensionValueSet;
import com.alibaba.mtl.log.d.i;

public class TransactionDelegate {
    public static void begin(Transaction transaction, String measureName) {
        try {
            if (AppMonitorDelegate.i && transaction != null) {
                i.a("TransactionDelegate", "statEvent begin. module: ", transaction.o, " monitorPoint: ", transaction.p, " measureName: ", measureName);
                if (f.STAT.isOpen() && (AppMonitorDelegate.IS_DEBUG || j.a(f.STAT, transaction.o, transaction.p))) {
                    e.a().a(transaction.r, transaction.a, transaction.o, transaction.p, measureName);
                    a(transaction);
                    return;
                }
                i.a("TransactionDelegate", "log discard", transaction.o, " monitorPoint: ", transaction.p, " measureName: ", measureName);
            }
        } catch (Throwable th) {
            b.a(th);
        }
    }

    private static void a(Transaction transaction) {
        if (transaction != null && transaction.b != null) {
            e.a().a(transaction.r, transaction.a, transaction.o, transaction.p, DimensionValueSet.create().addValues(transaction.b));
        }
    }

    public static void end(Transaction transaction, String measureName) {
        try {
            if (AppMonitorDelegate.i && transaction != null) {
                i.a("TransactionDelegate", "statEvent end. module: ", transaction.o, " monitorPoint: ", transaction.p, " measureName: ", measureName);
                if (f.STAT.isOpen() && (AppMonitorDelegate.IS_DEBUG || j.a(f.STAT, transaction.o, transaction.p))) {
                    a(transaction);
                    e.a().a(transaction.r, measureName, false, transaction.e);
                    return;
                }
                i.a("TransactionDelegate", "log discard", transaction.o, " monitorPoint: ", transaction.p, " measureName: ", measureName);
            }
        } catch (Throwable th) {
            b.a(th);
        }
    }
}
