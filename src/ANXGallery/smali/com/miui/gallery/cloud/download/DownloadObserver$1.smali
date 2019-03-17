.class Lcom/miui/gallery/cloud/download/DownloadObserver$1;
.super Ljava/lang/Object;
.source "DownloadObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/cloud/download/DownloadObserver;->register(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/cloud/download/DownloadObserver;

.field final synthetic val$application:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/gallery/cloud/download/DownloadObserver;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/cloud/download/DownloadObserver;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/miui/gallery/cloud/download/DownloadObserver$1;->this$0:Lcom/miui/gallery/cloud/download/DownloadObserver;

    iput-object p2, p0, Lcom/miui/gallery/cloud/download/DownloadObserver$1;->val$application:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 69
    const-string v0, "DownloadObserver"

    const-string v1, "do register"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/miui/gallery/cloud/download/DownloadObserver$1;->this$0:Lcom/miui/gallery/cloud/download/DownloadObserver;

    iget-object v1, p0, Lcom/miui/gallery/cloud/download/DownloadObserver$1;->val$application:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/miui/gallery/cloud/download/DownloadObserver;->access$200(Lcom/miui/gallery/cloud/download/DownloadObserver;Landroid/content/Context;)V

    .line 71
    return-void
.end method
