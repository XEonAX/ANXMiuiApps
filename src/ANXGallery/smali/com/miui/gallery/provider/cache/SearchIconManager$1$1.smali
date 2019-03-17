.class Lcom/miui/gallery/provider/cache/SearchIconManager$1$1;
.super Ljava/lang/Object;
.source "SearchIconManager.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/provider/cache/SearchIconManager$1;->onChange(Z)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/provider/cache/SearchIconManager$1;


# direct methods
.method constructor <init>(Lcom/miui/gallery/provider/cache/SearchIconManager$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/provider/cache/SearchIconManager$1;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/miui/gallery/provider/cache/SearchIconManager$1$1;->this$1:Lcom/miui/gallery/provider/cache/SearchIconManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/miui/gallery/provider/cache/SearchIconManager$1$1;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 2
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 65
    const-string v0, ".searchProvider.SearchIconManager"

    const-string v1, "On notify change, clear cache"

    invoke-static {v0, v1}, Lcom/miui/gallery/search/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/SearchIconManager$1$1;->this$1:Lcom/miui/gallery/provider/cache/SearchIconManager$1;

    iget-object v0, v0, Lcom/miui/gallery/provider/cache/SearchIconManager$1;->this$0:Lcom/miui/gallery/provider/cache/SearchIconManager;

    invoke-virtual {v0}, Lcom/miui/gallery/provider/cache/SearchIconManager;->releaseCache()V

    .line 67
    const/4 v0, 0x0

    return-object v0
.end method
