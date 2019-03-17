.class Lcom/miui/gallery/search/core/source/local/ContentCache$1;
.super Ljava/lang/Object;
.source "ContentCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/search/core/source/local/ContentCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/core/source/local/ContentCache;


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/core/source/local/ContentCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/search/core/source/local/ContentCache;

    .prologue
    .line 57
    .local p0, "this":Lcom/miui/gallery/search/core/source/local/ContentCache$1;, "Lcom/miui/gallery/search/core/source/local/ContentCache$1;"
    iput-object p1, p0, Lcom/miui/gallery/search/core/source/local/ContentCache$1;->this$0:Lcom/miui/gallery/search/core/source/local/ContentCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 60
    .local p0, "this":Lcom/miui/gallery/search/core/source/local/ContentCache$1;, "Lcom/miui/gallery/search/core/source/local/ContentCache$1;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/source/local/ContentCache$1;->this$0:Lcom/miui/gallery/search/core/source/local/ContentCache;

    invoke-virtual {v0}, Lcom/miui/gallery/search/core/source/local/ContentCache;->releaseCache()V

    .line 61
    return-void
.end method
