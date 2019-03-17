.class Lcom/miui/gallery/search/core/query/QueryResult$1;
.super Ljava/lang/Object;
.source "QueryResult.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/search/core/query/QueryResult;->addSourceResults(Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/core/query/QueryResult;


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/core/query/QueryResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/search/core/query/QueryResult;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/miui/gallery/search/core/query/QueryResult$1;->this$0:Lcom/miui/gallery/search/core/query/QueryResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/miui/gallery/search/core/query/QueryResult$1;->this$0:Lcom/miui/gallery/search/core/query/QueryResult;

    invoke-virtual {v0}, Lcom/miui/gallery/search/core/query/QueryResult;->notifyDataSetChanged()V

    .line 181
    return-void
.end method
