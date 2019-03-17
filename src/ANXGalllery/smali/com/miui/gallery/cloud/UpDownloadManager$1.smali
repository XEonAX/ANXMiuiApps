.class final Lcom/miui/gallery/cloud/UpDownloadManager$1;
.super Ljava/lang/Object;
.source "UpDownloadManager.java"

# interfaces
.implements Lcom/miui/gallery/cloud/thread/TaskFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/UpDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTask(IIIILcom/miui/gallery/cloud/thread/RequestCommandQueue$OnItemChangedListener;)Lcom/miui/gallery/cloud/thread/BaseTask;
    .locals 6
    .param p1, "type"    # I
    .param p2, "priorityCount"    # I
    .param p3, "batchMax"    # I
    .param p4, "commandMax"    # I
    .param p5, "changeListener"    # Lcom/miui/gallery/cloud/thread/RequestCommandQueue$OnItemChangedListener;

    .prologue
    .line 406
    packed-switch p1, :pswitch_data_0

    .line 418
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 409
    :pswitch_0
    new-instance v0, Lcom/miui/gallery/cloud/thread/BackUploadTask;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/cloud/thread/BackUploadTask;-><init>(IIIILcom/miui/gallery/cloud/thread/RequestCommandQueue$OnItemChangedListener;)V

    goto :goto_0

    .line 416
    :pswitch_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "this api is deprecated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
