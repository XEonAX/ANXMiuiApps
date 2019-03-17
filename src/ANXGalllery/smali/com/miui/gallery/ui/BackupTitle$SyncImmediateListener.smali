.class Lcom/miui/gallery/ui/BackupTitle$SyncImmediateListener;
.super Lcom/miui/gallery/ui/BackupTitle$BaseClickListener;
.source "BackupTitle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/BackupTitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncImmediateListener"
.end annotation


# instance fields
.field private mSyncType:Lcom/miui/gallery/cloud/syncstate/SyncType;

.field final synthetic this$0:Lcom/miui/gallery/ui/BackupTitle;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/BackupTitle;Lcom/miui/gallery/cloud/syncstate/SyncType;)V
    .locals 1
    .param p2, "syncType"    # Lcom/miui/gallery/cloud/syncstate/SyncType;

    .prologue
    .line 534
    iput-object p1, p0, Lcom/miui/gallery/ui/BackupTitle$SyncImmediateListener;->this$0:Lcom/miui/gallery/ui/BackupTitle;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/ui/BackupTitle$BaseClickListener;-><init>(Lcom/miui/gallery/ui/BackupTitle;Lcom/miui/gallery/ui/BackupTitle$1;)V

    .line 535
    iput-object p2, p0, Lcom/miui/gallery/ui/BackupTitle$SyncImmediateListener;->mSyncType:Lcom/miui/gallery/cloud/syncstate/SyncType;

    .line 536
    return-void
.end method

.method static synthetic access$1700(Lcom/miui/gallery/ui/BackupTitle$SyncImmediateListener;)Lcom/miui/gallery/cloud/syncstate/SyncType;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/BackupTitle$SyncImmediateListener;

    .prologue
    .line 530
    iget-object v0, p0, Lcom/miui/gallery/ui/BackupTitle$SyncImmediateListener;->mSyncType:Lcom/miui/gallery/cloud/syncstate/SyncType;

    return-object v0
.end method


# virtual methods
.method public onCustomClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 540
    iget-object v0, p0, Lcom/miui/gallery/ui/BackupTitle$SyncImmediateListener;->mSyncType:Lcom/miui/gallery/cloud/syncstate/SyncType;

    sget-object v1, Lcom/miui/gallery/cloud/syncstate/SyncType;->GPRS_FORCE:Lcom/miui/gallery/cloud/syncstate/SyncType;

    if-ne v0, v1, :cond_0

    .line 541
    iget-object v0, p0, Lcom/miui/gallery/ui/BackupTitle$SyncImmediateListener;->this$0:Lcom/miui/gallery/ui/BackupTitle;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/BackupTitle;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 542
    .local v7, "res":Landroid/content/res/Resources;
    iget-object v0, p0, Lcom/miui/gallery/ui/BackupTitle$SyncImmediateListener;->this$0:Lcom/miui/gallery/ui/BackupTitle;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/BackupTitle;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c00ba

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/gallery/ui/BackupTitle$SyncImmediateListener;->this$0:Lcom/miui/gallery/ui/BackupTitle;

    .line 543
    invoke-virtual {v4}, Lcom/miui/gallery/ui/BackupTitle;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->getInstance()Lcom/miui/gallery/cloud/syncstate/SyncStateManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->getSyncState()Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->getDirtySize()J

    move-result-wide v8

    invoke-static {v4, v8, v9}, Lcom/miui/gallery/util/FormatUtil;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v7, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c00bb

    .line 544
    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c00b9

    const v4, 0x7f0c00ca

    new-instance v5, Lcom/miui/gallery/ui/BackupTitle$SyncImmediateListener$1;

    invoke-direct {v5, p0}, Lcom/miui/gallery/ui/BackupTitle$SyncImmediateListener$1;-><init>(Lcom/miui/gallery/ui/BackupTitle$SyncImmediateListener;)V

    const/4 v6, 0x0

    .line 542
    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/DialogUtil;->showInfoDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    .line 556
    .end local v7    # "res":Landroid/content/res/Resources;
    :goto_0
    return-void

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/BackupTitle$SyncImmediateListener;->this$0:Lcom/miui/gallery/ui/BackupTitle;

    iget-object v1, p0, Lcom/miui/gallery/ui/BackupTitle$SyncImmediateListener;->mSyncType:Lcom/miui/gallery/cloud/syncstate/SyncType;

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/BackupTitle;->access$1800(Lcom/miui/gallery/ui/BackupTitle;Lcom/miui/gallery/cloud/syncstate/SyncType;)V

    goto :goto_0
.end method
