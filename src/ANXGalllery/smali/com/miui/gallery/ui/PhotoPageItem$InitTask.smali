.class Lcom/miui/gallery/ui/PhotoPageItem$InitTask;
.super Landroid/os/AsyncTask;
.source "PhotoPageItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/miui/gallery/model/BaseDataItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mClock:J

.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageItem;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/PhotoPageItem;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageItem$InitTask;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/PhotoPageItem;Lcom/miui/gallery/ui/PhotoPageItem$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/PhotoPageItem;
    .param p2, "x1"    # Lcom/miui/gallery/ui/PhotoPageItem$1;

    .prologue
    .line 412
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem$InitTask;-><init>(Lcom/miui/gallery/ui/PhotoPageItem;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/miui/gallery/model/BaseDataItem;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v1, 0x0

    .line 417
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem$InitTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 428
    :cond_0
    :goto_0
    return-object v0

    .line 420
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/ui/PhotoPageItem$InitTask;->mClock:J

    .line 421
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageItem$InitTask;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v0, v2, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    .line 422
    .local v0, "item":Lcom/miui/gallery/model/BaseDataItem;
    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->reloadCache()V

    .line 424
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem$InitTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 425
    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 412
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem$InitTask;->doInBackground([Ljava/lang/Void;)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 6
    .param p1, "baseDataItem"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 433
    const-string v0, "PhotoPageItem"

    const-string v1, "init costs %d, task is cancelled: %b"

    .line 434
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/gallery/ui/PhotoPageItem$InitTask;->mClock:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem$InitTask;->isCancelled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 433
    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 435
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem$InitTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$InitTask;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-ne p1, v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$InitTask;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoPageItem;->displayImage(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 437
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$InitTask;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageItem;->onPostInitialized()V

    .line 439
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 412
    check-cast p1, Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem$InitTask;->onPostExecute(Lcom/miui/gallery/model/BaseDataItem;)V

    return-void
.end method
