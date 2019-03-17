.class Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$1;
.super Ljava/lang/Object;
.source "IconLoaderTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/search/core/display/icon/IconLoaderTask;->consumeResult(Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$IconLoaderResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/core/display/icon/IconLoaderTask;

.field final synthetic val$result:Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$IconLoaderResult;


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/core/display/icon/IconLoaderTask;Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$IconLoaderResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/search/core/display/icon/IconLoaderTask;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$1;->this$0:Lcom/miui/gallery/search/core/display/icon/IconLoaderTask;

    iput-object p2, p0, Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$1;->val$result:Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$IconLoaderResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$1;->this$0:Lcom/miui/gallery/search/core/display/icon/IconLoaderTask;

    invoke-static {v0}, Lcom/miui/gallery/search/core/display/icon/IconLoaderTask;->access$100(Lcom/miui/gallery/search/core/display/icon/IconLoaderTask;)Lcom/miui/gallery/search/core/Consumer;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$1;->val$result:Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$IconLoaderResult;

    invoke-interface {v0, v1}, Lcom/miui/gallery/search/core/Consumer;->consume(Ljava/lang/Object;)Z

    .line 111
    return-void
.end method
