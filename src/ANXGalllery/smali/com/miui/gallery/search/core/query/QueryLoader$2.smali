.class Lcom/miui/gallery/search/core/query/QueryLoader$2;
.super Landroid/database/ContentObserver;
.source "QueryLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/search/core/query/QueryLoader;->getResultContentObserver()Landroid/database/ContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/core/query/QueryLoader;


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/core/query/QueryLoader;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/search/core/query/QueryLoader;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 139
    .local p0, "this":Lcom/miui/gallery/search/core/query/QueryLoader$2;, "Lcom/miui/gallery/search/core/query/QueryLoader$2;"
    iput-object p1, p0, Lcom/miui/gallery/search/core/query/QueryLoader$2;->this$0:Lcom/miui/gallery/search/core/query/QueryLoader;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 143
    .local p0, "this":Lcom/miui/gallery/search/core/query/QueryLoader$2;, "Lcom/miui/gallery/search/core/query/QueryLoader$2;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/query/QueryLoader$2;->this$0:Lcom/miui/gallery/search/core/query/QueryLoader;

    invoke-virtual {v0}, Lcom/miui/gallery/search/core/query/QueryLoader;->onContentChanged()V

    .line 144
    return-void
.end method
