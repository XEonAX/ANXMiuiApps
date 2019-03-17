.class Lcom/miui/gallery/scanner/MediaScannerReceiver$2;
.super Ljava/lang/Object;
.source "MediaScannerReceiver.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/scanner/MediaScannerReceiver;->onMediaScannerScanFile(Landroid/content/Context;Landroid/net/Uri;)V
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
    .line 72
    iput-object p1, p0, Lcom/miui/gallery/scanner/MediaScannerReceiver$2;->this$0:Lcom/miui/gallery/scanner/MediaScannerReceiver;

    iput-object p2, p0, Lcom/miui/gallery/scanner/MediaScannerReceiver$2;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/miui/gallery/scanner/MediaScannerReceiver$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 8
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    const/4 v7, 0x0

    .line 75
    iget-object v4, p0, Lcom/miui/gallery/scanner/MediaScannerReceiver$2;->val$uri:Landroid/net/Uri;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/miui/gallery/scanner/MediaScannerReceiver$2;->val$uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "file"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 76
    iget-object v4, p0, Lcom/miui/gallery/scanner/MediaScannerReceiver$2;->val$uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "path":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 78
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "externalStoragePath":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/EnvironmentCompat;->getLegacyExternalStorageDirectory()Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "legacyPath":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 86
    invoke-static {v3, v2}, Lcom/miui/gallery/util/ExtraTextUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 89
    :cond_0
    iget-object v4, p0, Lcom/miui/gallery/scanner/MediaScannerReceiver$2;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3}, Lcom/miui/gallery/util/FileUtils;->getParentFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/scanner/MediaScannerReceiver;->access$000(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 90
    const-string v4, "MediaScannerReceiver"

    const-string v5, "ACTION_MEDIA_SCANNER_SCAN_FILE %s"

    invoke-static {v4, v5, v3}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    iget-object v4, p0, Lcom/miui/gallery/scanner/MediaScannerReceiver$2;->val$context:Landroid/content/Context;

    .line 92
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    .line 91
    invoke-static {v4, v3, v5}, Lcom/miui/gallery/scanner/MediaScannerUtil;->scanSingleFile(Landroid/content/Context;Ljava/lang/String;I)V

    .line 99
    .end local v1    # "externalStoragePath":Ljava/lang/String;
    .end local v2    # "legacyPath":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v7

    .line 82
    .restart local v1    # "externalStoragePath":Ljava/lang/String;
    .restart local v2    # "legacyPath":Ljava/lang/String;
    .restart local v3    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "MediaScannerReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can\'t canonicalize "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    const-string v4, "MediaScannerReceiver"

    const-string v5, "ACTION_MEDIA_SCANNER_SCAN_FILE but not trigger %s"

    invoke-static {v4, v5, v3}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
