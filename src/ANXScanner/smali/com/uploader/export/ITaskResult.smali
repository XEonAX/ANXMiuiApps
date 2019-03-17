.class public interface abstract Lcom/uploader/export/ITaskResult;
.super Ljava/lang/Object;
.source "ITaskResult.java"


# virtual methods
.method public abstract getBizResult()Ljava/lang/String;
.end method

.method public abstract getFileUrl()Ljava/lang/String;
.end method

.method public abstract getResult()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
