.class Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NFCManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager$NfcUpdateTask;
    }
.end annotation


# instance fields
.field private mUpdateTask:Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager$NfcUpdateTask;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2445
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager$NfcUpdateTask;

    invoke-direct {v0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager$NfcUpdateTask;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager;->mUpdateTask:Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager$NfcUpdateTask;

    .line 2446
    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    .prologue
    .line 2455
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager;->mUpdateTask:Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager$NfcUpdateTask;

    if-eqz v0, :cond_0

    .line 2456
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager;->mUpdateTask:Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager$NfcUpdateTask;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager$NfcUpdateTask;->release()V

    .line 2457
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager;->mUpdateTask:Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager$NfcUpdateTask;

    .line 2459
    :cond_0
    return-void
.end method

.method public settleItem(Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 1
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 2449
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager;->mUpdateTask:Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager$NfcUpdateTask;

    if-eqz v0, :cond_0

    .line 2450
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager;->mUpdateTask:Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager$NfcUpdateTask;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager$NfcUpdateTask;->updateItem(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 2452
    :cond_0
    return-void
.end method
