.class public interface abstract Lmiui/net/http/Cache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/net/http/Cache$Entry;
    }
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract get(Ljava/lang/String;)Lmiui/net/http/Cache$Entry;
.end method

.method public abstract initialize()V
.end method

.method public abstract invalidate(Ljava/lang/String;Z)V
.end method

.method public abstract put(Ljava/lang/String;Lmiui/net/http/Cache$Entry;)Z
.end method

.method public abstract remove(Ljava/lang/String;)V
.end method
