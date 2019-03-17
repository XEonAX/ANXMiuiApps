.class public interface abstract Lcom/miui/gallery/util/FileCompressTask$OnCompressListener;
.super Ljava/lang/Object;
.source "FileCompressTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/FileCompressTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCompressListener"
.end annotation


# virtual methods
.method public abstract onCompressComplete(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onCompressProgress(F)V
.end method
