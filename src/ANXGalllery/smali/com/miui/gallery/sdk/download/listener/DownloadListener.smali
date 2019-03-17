.class public interface abstract Lcom/miui/gallery/sdk/download/listener/DownloadListener;
.super Ljava/lang/Object;
.source "DownloadListener.java"


# virtual methods
.method public abstract onDownloadCancel(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V
.end method

.method public abstract onDownloadFail(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V
.end method

.method public abstract onDownloadStarted(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V
.end method

.method public abstract onDownloadSuccess(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/sdk/download/assist/DownloadedItem;)V
.end method
