package com.nexstreaming.app.common.norm;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* compiled from: NormTable */
public abstract class b {
    boolean addedOrUpdatedToDb = false;
    private final c tableInfo = c.a(getClass());

    @Retention(RetentionPolicy.RUNTIME)
    /* compiled from: NormTable */
    public @interface a {
        int a() default 11;
    }

    @Retention(RetentionPolicy.RUNTIME)
    /* compiled from: NormTable */
    public @interface b {
    }

    @Retention(RetentionPolicy.RUNTIME)
    /* compiled from: NormTable */
    public @interface c {
    }

    @Retention(RetentionPolicy.RUNTIME)
    /* compiled from: NormTable */
    public @interface d {
    }

    @Retention(RetentionPolicy.RUNTIME)
    /* compiled from: NormTable */
    public @interface e {
    }

    @Retention(RetentionPolicy.RUNTIME)
    /* compiled from: NormTable */
    public @interface f {
    }

    @Retention(RetentionPolicy.RUNTIME)
    /* compiled from: NormTable */
    public @interface g {
    }

    public c getTableInfo() {
        return this.tableInfo;
    }

    public boolean wasAddedToDb() {
        return this.addedOrUpdatedToDb;
    }

    public long getDbRowID() {
        try {
            return getTableInfo().f().b.getLong(this);
        } catch (Throwable e) {
            throw new IllegalStateException(e);
        }
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (!(obj instanceof b)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        b bVar = (b) obj;
        if (!bVar.getTableInfo().c().equals(getTableInfo().c())) {
            return false;
        }
        if (getDbRowID() != bVar.getDbRowID()) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (int) (getDbRowID() * ((long) getTableInfo().c().hashCode()));
    }
}
