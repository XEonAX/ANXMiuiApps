.class Lcom/miui/gallery/ui/SyncBar$SyncManager$1;
.super Ljava/lang/Object;
.source "SyncBar.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/SyncBar$SyncManager;->onAppFocused()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/SyncBar$SyncManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/SyncBar$SyncManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/SyncBar$SyncManager;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/miui/gallery/ui/SyncBar$SyncManager$1;->this$0:Lcom/miui/gallery/ui/SyncBar$SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 4
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    const/4 v3, 0x1

    .line 281
    iget-object v1, p0, Lcom/miui/gallery/ui/SyncBar$SyncManager$1;->this$0:Lcom/miui/gallery/ui/SyncBar$SyncManager;

    invoke-static {v1}, Lcom/miui/gallery/ui/SyncBar$SyncManager;->access$100(Lcom/miui/gallery/ui/SyncBar$SyncManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    new-instance v1, Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    invoke-direct {v1}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;-><init>()V

    sget-object v2, Lcom/miui/gallery/cloud/syncstate/SyncType;->NORMAL:Lcom/miui/gallery/cloud/syncstate/SyncType;

    .line 283
    invoke-virtual {v1, v2}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->setSyncType(Lcom/miui/gallery/cloud/syncstate/SyncType;)Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    move-result-object v1

    .line 284
    invoke-virtual {v1, v3}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->setSyncReason(I)Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    move-result-object v1

    .line 285
    invoke-virtual {v1, v3}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->setDelayUpload(Z)Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    move-result-object v1

    .line 286
    invoke-virtual {v1}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->build()Lcom/miui/gallery/util/SyncUtil$Request;

    move-result-object v0

    .line 287
    .local v0, "request":Lcom/miui/gallery/util/SyncUtil$Request;
    iget-object v1, p0, Lcom/miui/gallery/ui/SyncBar$SyncManager$1;->this$0:Lcom/miui/gallery/ui/SyncBar$SyncManager;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/SyncBar$SyncManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/gallery/util/SyncUtil;->requestSync(Landroid/content/Context;Lcom/miui/gallery/util/SyncUtil$Request;)V

    .line 289
    .end local v0    # "request":Lcom/miui/gallery/util/SyncUtil$Request;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
