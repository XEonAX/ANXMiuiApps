.class Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask$1;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask;->execute(Lcom/miui/gallery/model/BaseDataItem;)V
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
.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask;

.field final synthetic val$dataItem:Lcom/miui/gallery/model/BaseDataItem;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask;Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask;

    .prologue
    .line 4254
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask$1;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask;

    iput-object p2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask$1;->val$dataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4254
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask$1;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 12
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    .line 4257
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4279
    :cond_0
    :goto_0
    return-object v8

    .line 4260
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask$1;->val$dataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v3, :cond_0

    .line 4264
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask$1;->val$dataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v3}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v2

    .line 4265
    .local v2, "path":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4269
    invoke-static {v2}, Lcom/miui/gallery/util/SpecialTypeMediaUtils;->parseFlagsForImage(Ljava/lang/String;)J

    move-result-wide v4

    .line 4270
    .local v4, "specialTypeFlags":J
    const-wide/16 v6, 0x20

    and-long/2addr v6, v4

    cmp-long v3, v6, v10

    if-eqz v3, :cond_2

    .line 4271
    invoke-static {v2}, Lcom/miui/gallery/util/XmpHelper;->readMicroVideoOffset(Ljava/lang/String;)J

    move-result-wide v0

    .line 4272
    .local v0, "offset":J
    cmp-long v3, v0, v10

    if-lez v3, :cond_3

    .line 4273
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask$1;->val$dataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v3, v0, v1}, Lcom/miui/gallery/model/BaseDataItem;->setMotionOffset(J)V

    .line 4278
    .end local v0    # "offset":J
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask$1;->val$dataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v3, v4, v5}, Lcom/miui/gallery/model/BaseDataItem;->setSpecialTypeFlags(J)V

    goto :goto_0

    .line 4275
    .restart local v0    # "offset":J
    :cond_3
    const-wide/16 v4, 0x0

    goto :goto_1
.end method
