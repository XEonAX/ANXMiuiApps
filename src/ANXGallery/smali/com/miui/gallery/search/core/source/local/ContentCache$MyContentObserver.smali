.class Lcom/miui/gallery/search/core/source/local/ContentCache$MyContentObserver;
.super Landroid/database/ContentObserver;
.source "ContentCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/search/core/source/local/ContentCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/core/source/local/ContentCache;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/search/core/source/local/ContentCache;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 118
    .local p0, "this":Lcom/miui/gallery/search/core/source/local/ContentCache$MyContentObserver;, "Lcom/miui/gallery/search/core/source/local/ContentCache<TT;>.MyContentObserver;"
    iput-object p1, p0, Lcom/miui/gallery/search/core/source/local/ContentCache$MyContentObserver;->this$0:Lcom/miui/gallery/search/core/source/local/ContentCache;

    .line 119
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 120
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 123
    .local p0, "this":Lcom/miui/gallery/search/core/source/local/ContentCache$MyContentObserver;, "Lcom/miui/gallery/search/core/source/local/ContentCache<TT;>.MyContentObserver;"
    iget-object v1, p0, Lcom/miui/gallery/search/core/source/local/ContentCache$MyContentObserver;->this$0:Lcom/miui/gallery/search/core/source/local/ContentCache;

    invoke-static {v1}, Lcom/miui/gallery/search/core/source/local/ContentCache;->access$000(Lcom/miui/gallery/search/core/source/local/ContentCache;)Landroid/database/ContentObserver;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/miui/gallery/search/core/source/local/ContentCache$MyContentObserver;->this$0:Lcom/miui/gallery/search/core/source/local/ContentCache;

    invoke-static {v1}, Lcom/miui/gallery/search/core/source/local/ContentCache;->access$100(Lcom/miui/gallery/search/core/source/local/ContentCache;)Lcom/miui/gallery/search/core/source/local/ContentCacheProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/search/core/source/local/ContentCacheProvider;->loadContent()Ljava/lang/Object;

    move-result-object v0

    .line 125
    .local v0, "cache":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/search/core/source/local/ContentCache$MyContentObserver;->this$0:Lcom/miui/gallery/search/core/source/local/ContentCache;

    invoke-static {v1}, Lcom/miui/gallery/search/core/source/local/ContentCache;->access$000(Lcom/miui/gallery/search/core/source/local/ContentCache;)Landroid/database/ContentObserver;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 126
    iget-object v1, p0, Lcom/miui/gallery/search/core/source/local/ContentCache$MyContentObserver;->this$0:Lcom/miui/gallery/search/core/source/local/ContentCache;

    invoke-static {v1}, Lcom/miui/gallery/search/core/source/local/ContentCache;->access$200(Lcom/miui/gallery/search/core/source/local/ContentCache;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/miui/gallery/search/core/source/local/ContentCache$MyContentObserver;->this$0:Lcom/miui/gallery/search/core/source/local/ContentCache;

    invoke-static {v1}, Lcom/miui/gallery/search/core/source/local/ContentCache;->access$200(Lcom/miui/gallery/search/core/source/local/ContentCache;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/search/core/source/local/ContentCache$MyContentObserver;->this$0:Lcom/miui/gallery/search/core/source/local/ContentCache;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/miui/gallery/search/core/source/local/ContentCache;->access$202(Lcom/miui/gallery/search/core/source/local/ContentCache;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 132
    .end local v0    # "cache":Ljava/lang/Object;, "TT;"
    :cond_1
    return-void
.end method
