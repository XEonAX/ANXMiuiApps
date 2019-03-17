.class Lcom/miui/gallery/threadpool/FutureHandler$1;
.super Ljava/lang/Object;
.source "FutureHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/threadpool/FutureHandler;->onFutureDone(Lcom/miui/gallery/threadpool/Future;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/threadpool/FutureHandler;

.field final synthetic val$future:Lcom/miui/gallery/threadpool/Future;


# direct methods
.method constructor <init>(Lcom/miui/gallery/threadpool/FutureHandler;Lcom/miui/gallery/threadpool/Future;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/threadpool/FutureHandler;

    .prologue
    .line 23
    .local p0, "this":Lcom/miui/gallery/threadpool/FutureHandler$1;, "Lcom/miui/gallery/threadpool/FutureHandler$1;"
    iput-object p1, p0, Lcom/miui/gallery/threadpool/FutureHandler$1;->this$0:Lcom/miui/gallery/threadpool/FutureHandler;

    iput-object p2, p0, Lcom/miui/gallery/threadpool/FutureHandler$1;->val$future:Lcom/miui/gallery/threadpool/Future;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 26
    .local p0, "this":Lcom/miui/gallery/threadpool/FutureHandler$1;, "Lcom/miui/gallery/threadpool/FutureHandler$1;"
    iget-object v0, p0, Lcom/miui/gallery/threadpool/FutureHandler$1;->this$0:Lcom/miui/gallery/threadpool/FutureHandler;

    iget-object v1, p0, Lcom/miui/gallery/threadpool/FutureHandler$1;->val$future:Lcom/miui/gallery/threadpool/Future;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/threadpool/FutureHandler;->onPostExecute(Lcom/miui/gallery/threadpool/Future;)V

    .line 27
    return-void
.end method
