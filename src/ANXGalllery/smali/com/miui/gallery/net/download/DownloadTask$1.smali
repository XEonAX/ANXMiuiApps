.class Lcom/miui/gallery/net/download/DownloadTask$1;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/net/download/DownloadTask;->preProcess(Lcom/miui/gallery/net/download/Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/net/download/DownloadTask;

.field final synthetic val$request:Lcom/miui/gallery/net/download/Request;


# direct methods
.method constructor <init>(Lcom/miui/gallery/net/download/DownloadTask;Lcom/miui/gallery/net/download/Request;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/net/download/DownloadTask;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/miui/gallery/net/download/DownloadTask$1;->this$0:Lcom/miui/gallery/net/download/DownloadTask;

    iput-object p2, p0, Lcom/miui/gallery/net/download/DownloadTask$1;->val$request:Lcom/miui/gallery/net/download/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 109
    iget-object v1, p0, Lcom/miui/gallery/net/download/DownloadTask$1;->val$request:Lcom/miui/gallery/net/download/Request;

    invoke-virtual {v1}, Lcom/miui/gallery/net/download/Request;->getListener()Lcom/miui/gallery/net/download/Request$Listener;

    move-result-object v0

    .line 110
    .local v0, "listener":Lcom/miui/gallery/net/download/Request$Listener;
    if-eqz v0, :cond_0

    .line 111
    invoke-interface {v0}, Lcom/miui/gallery/net/download/Request$Listener;->onStart()V

    .line 113
    :cond_0
    return-void
.end method
