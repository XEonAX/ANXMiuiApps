.class final Lcom/miui/gallery/util/SyncUtil$1;
.super Ljava/lang/Object;
.source "SyncUtil.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/SyncUtil;->requestSyncInWorkThread(Landroid/content/Context;Lcom/miui/gallery/util/SyncUtil$Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$application:Landroid/content/Context;

.field final synthetic val$request:Lcom/miui/gallery/util/SyncUtil$Request;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/miui/gallery/util/SyncUtil$Request;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/miui/gallery/util/SyncUtil$1;->val$application:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/gallery/util/SyncUtil$1;->val$request:Lcom/miui/gallery/util/SyncUtil$Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 2
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/miui/gallery/util/SyncUtil$1;->val$application:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/gallery/util/SyncUtil$1;->val$request:Lcom/miui/gallery/util/SyncUtil$Request;

    invoke-static {v0, v1}, Lcom/miui/gallery/util/SyncUtil;->access$000(Landroid/content/Context;Lcom/miui/gallery/util/SyncUtil$Request;)V

    .line 89
    const/4 v0, 0x0

    return-object v0
.end method
