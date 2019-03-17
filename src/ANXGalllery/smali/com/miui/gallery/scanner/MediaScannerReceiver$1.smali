.class Lcom/miui/gallery/scanner/MediaScannerReceiver$1;
.super Ljava/lang/Object;
.source "MediaScannerReceiver.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/scanner/MediaScannerReceiver;->onMediaScannerFinished(Landroid/content/Context;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/ThreadPool$Job",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/scanner/MediaScannerReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/miui/gallery/scanner/MediaScannerReceiver;Landroid/net/Uri;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/scanner/MediaScannerReceiver;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/miui/gallery/scanner/MediaScannerReceiver$1;->this$0:Lcom/miui/gallery/scanner/MediaScannerReceiver;

    iput-object p2, p0, Lcom/miui/gallery/scanner/MediaScannerReceiver$1;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/miui/gallery/scanner/MediaScannerReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 5
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 57
    iget-object v1, p0, Lcom/miui/gallery/scanner/MediaScannerReceiver$1;->val$uri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    const-string v1, "file"

    iget-object v2, p0, Lcom/miui/gallery/scanner/MediaScannerReceiver$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/miui/gallery/scanner/MediaScannerReceiver$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/miui/gallery/scanner/MediaScannerReceiver$1;->val$context:Landroid/content/Context;

    .line 61
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 60
    invoke-static {v1, v0, v2, v3, v4}, Lcom/miui/gallery/scanner/MediaScannerUtil;->scanDirectory(Landroid/content/Context;Ljava/lang/String;IZZ)V

    .line 66
    .end local v0    # "path":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
