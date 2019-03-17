.class public interface abstract Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$HttpListener;
.super Ljava/lang/Object;
.source "CloudConfigNetworking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HttpListener"
.end annotation


# virtual methods
.method public abstract onError(ILcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;)V
.end method

.method public abstract onResponse(ILjava/util/HashMap;Ljava/io/InputStream;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation
.end method
