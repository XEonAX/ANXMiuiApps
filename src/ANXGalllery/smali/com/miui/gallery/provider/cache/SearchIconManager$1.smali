.class Lcom/miui/gallery/provider/cache/SearchIconManager$1;
.super Landroid/database/ContentObserver;
.source "SearchIconManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/provider/cache/SearchIconManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/provider/cache/SearchIconManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/provider/cache/SearchIconManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/provider/cache/SearchIconManager;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/miui/gallery/provider/cache/SearchIconManager$1;->this$0:Lcom/miui/gallery/provider/cache/SearchIconManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 62
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/provider/cache/SearchIconManager$1$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/provider/cache/SearchIconManager$1$1;-><init>(Lcom/miui/gallery/provider/cache/SearchIconManager$1;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    .line 70
    return-void
.end method
