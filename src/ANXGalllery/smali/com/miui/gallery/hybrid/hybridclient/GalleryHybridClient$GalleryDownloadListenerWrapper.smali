.class public Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient$GalleryDownloadListenerWrapper;
.super Lcom/miui/gallery/hybrid/hybridclient/wrapper/DownloadListenerWrapper;
.source "GalleryHybridClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GalleryDownloadListenerWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;Landroid/webkit/DownloadListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;
    .param p2, "downloadListener"    # Landroid/webkit/DownloadListener;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient$GalleryDownloadListenerWrapper;->this$0:Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;

    .line 181
    invoke-direct {p0, p2}, Lcom/miui/gallery/hybrid/hybridclient/wrapper/DownloadListenerWrapper;-><init>(Landroid/webkit/DownloadListener;)V

    .line 182
    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimetype"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient$GalleryDownloadListenerWrapper;->getWrapped()Landroid/webkit/DownloadListener;

    move-result-object v2

    if-nez v2, :cond_0

    .line 187
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 188
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 189
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient$GalleryDownloadListenerWrapper;->this$0:Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;

    iget-object v2, v2, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 193
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/miui/gallery/hybrid/hybridclient/wrapper/DownloadListenerWrapper;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method
