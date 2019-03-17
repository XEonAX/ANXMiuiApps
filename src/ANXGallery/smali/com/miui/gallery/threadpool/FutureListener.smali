.class public interface abstract Lcom/miui/gallery/threadpool/FutureListener;
.super Ljava/lang/Object;
.source "FutureListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onFutureDone(Lcom/miui/gallery/threadpool/Future;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/threadpool/Future",
            "<TT;>;)V"
        }
    .end annotation
.end method
