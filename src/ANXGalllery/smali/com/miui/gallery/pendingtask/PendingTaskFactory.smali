.class public Lcom/miui/gallery/pendingtask/PendingTaskFactory;
.super Ljava/lang/Object;
.source "PendingTaskFactory.java"


# direct methods
.method public static create(I)Lcom/miui/gallery/pendingtask/base/PendingTask;
    .locals 1
    .param p0, "taskType"    # I

    .prologue
    const/4 v0, 0x0

    .line 33
    packed-switch p0, :pswitch_data_0

    .line 53
    :goto_0
    :pswitch_0
    return-object v0

    .line 35
    :pswitch_1
    new-instance v0, Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask;

    invoke-direct {v0, p0}, Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask;-><init>(I)V

    goto :goto_0

    .line 37
    :pswitch_2
    new-instance v0, Lcom/miui/gallery/cloudcontrol/CloudControlPendingTask;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cloudcontrol/CloudControlPendingTask;-><init>(I)V

    goto :goto_0

    .line 39
    :pswitch_3
    new-instance v0, Lcom/miui/gallery/discovery/PrintSilentInstallTask;

    invoke-direct {v0, p0}, Lcom/miui/gallery/discovery/PrintSilentInstallTask;-><init>(I)V

    goto :goto_0

    .line 41
    :pswitch_4
    new-instance v0, Lcom/miui/gallery/assistant/process/ExistImageFeatureTask;

    invoke-direct {v0, p0}, Lcom/miui/gallery/assistant/process/ExistImageFeatureTask;-><init>(I)V

    goto :goto_0

    .line 43
    :pswitch_5
    new-instance v0, Lcom/miui/gallery/assistant/library/LibraryDownloadTask;

    invoke-direct {v0, p0}, Lcom/miui/gallery/assistant/library/LibraryDownloadTask;-><init>(I)V

    goto :goto_0

    .line 45
    :pswitch_6
    new-instance v0, Lcom/miui/gallery/assistant/library/DeleteLibraryTask;

    invoke-direct {v0, p0}, Lcom/miui/gallery/assistant/library/DeleteLibraryTask;-><init>(I)V

    goto :goto_0

    .line 47
    :pswitch_7
    new-instance v0, Lcom/miui/gallery/assistant/process/ExistImageFeatureChargingTask;

    invoke-direct {v0, p0}, Lcom/miui/gallery/assistant/process/ExistImageFeatureChargingTask;-><init>(I)V

    goto :goto_0

    .line 49
    :pswitch_8
    new-instance v0, Lcom/miui/gallery/card/preprocess/ScenarioAlbumChargingTask;

    invoke-direct {v0, p0}, Lcom/miui/gallery/card/preprocess/ScenarioAlbumChargingTask;-><init>(I)V

    goto :goto_0

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
