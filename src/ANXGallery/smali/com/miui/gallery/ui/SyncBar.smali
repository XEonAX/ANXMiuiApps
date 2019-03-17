.class public Lcom/miui/gallery/ui/SyncBar;
.super Lcom/miui/gallery/ui/HomePageTopBarController$HomePageBar;
.source "SyncBar.java"

# interfaces
.implements Lcom/miui/gallery/util/AppFocusedCheckHelper$OnAppFocusedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/SyncBar$PanelData;,
        Lcom/miui/gallery/ui/SyncBar$DownloadManager;,
        Lcom/miui/gallery/ui/SyncBar$SyncManager;,
        Lcom/miui/gallery/ui/SyncBar$ChildManager;
    }
.end annotation


# static fields
.field private static sDownloadOverlayStatus:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/miui/gallery/cloud/syncstate/SyncStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDesc:Landroid/widget/TextView;

.field private mDownloadManager:Lcom/miui/gallery/ui/SyncBar$DownloadManager;

.field private mDownloadPanelData:Lcom/miui/gallery/ui/SyncBar$PanelData;

.field private mPanelItem:Lcom/miui/gallery/widget/PanelItemLayout;

.field private mSyncManager:Lcom/miui/gallery/ui/SyncBar$SyncManager;

.field private mSyncPanelData:Lcom/miui/gallery/ui/SyncBar$PanelData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/miui/gallery/ui/SyncBar;->sDownloadOverlayStatus:Ljava/util/LinkedList;

    .line 70
    sget-object v0, Lcom/miui/gallery/ui/SyncBar;->sDownloadOverlayStatus:Ljava/util/LinkedList;

    sget-object v1, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->MASTER_SYNC_OFF:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/miui/gallery/ui/SyncBar;->sDownloadOverlayStatus:Ljava/util/LinkedList;

    sget-object v1, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->SYNC_OFF:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/miui/gallery/ui/SyncBar;->sDownloadOverlayStatus:Ljava/util/LinkedList;

    sget-object v1, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->SYNCED:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/miui/gallery/widget/PanelManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "priority"    # I
    .param p3, "manager"    # Lcom/miui/gallery/widget/PanelManager;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/ui/HomePageTopBarController$HomePageBar;-><init>(Landroid/content/Context;ILcom/miui/gallery/widget/PanelManager;)V

    .line 77
    new-instance v0, Lcom/miui/gallery/ui/SyncBar$SyncManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/SyncBar$SyncManager;-><init>(Lcom/miui/gallery/ui/SyncBar;I)V

    iput-object v0, p0, Lcom/miui/gallery/ui/SyncBar;->mSyncManager:Lcom/miui/gallery/ui/SyncBar$SyncManager;

    .line 78
    new-instance v0, Lcom/miui/gallery/ui/SyncBar$DownloadManager;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/SyncBar$DownloadManager;-><init>(Lcom/miui/gallery/ui/SyncBar;I)V

    iput-object v0, p0, Lcom/miui/gallery/ui/SyncBar;->mDownloadManager:Lcom/miui/gallery/ui/SyncBar$DownloadManager;

    .line 79
    return-void
.end method

.method private ensureView()V
    .locals 4

    .prologue
    .line 82
    iget-object v0, p0, Lcom/miui/gallery/ui/SyncBar;->mPanelItem:Lcom/miui/gallery/widget/PanelItemLayout;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/miui/gallery/widget/PanelItemLayout;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/SyncBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/widget/PanelItemLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/SyncBar;->mPanelItem:Lcom/miui/gallery/widget/PanelItemLayout;

    .line 84
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/SyncBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/SyncBar;->mDesc:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Lcom/miui/gallery/ui/SyncBar;->mDesc:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/SyncBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    iget-object v0, p0, Lcom/miui/gallery/ui/SyncBar;->mDesc:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/SyncBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0160

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 87
    iget-object v0, p0, Lcom/miui/gallery/ui/SyncBar;->mPanelItem:Lcom/miui/gallery/widget/PanelItemLayout;

    iget-object v1, p0, Lcom/miui/gallery/ui/SyncBar;->mDesc:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/PanelItemLayout;->addDetail(Landroid/view/View;)Landroid/view/View;

    .line 89
    :cond_0
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/miui/gallery/ui/SyncBar;->ensureView()V

    .line 94
    iget-object v0, p0, Lcom/miui/gallery/ui/SyncBar;->mPanelItem:Lcom/miui/gallery/widget/PanelItemLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/PanelItemLayout;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onAppFocused()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/miui/gallery/ui/SyncBar;->mSyncManager:Lcom/miui/gallery/ui/SyncBar$SyncManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SyncBar$SyncManager;->onAppFocused()V

    .line 112
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/miui/gallery/ui/SyncBar;->mSyncManager:Lcom/miui/gallery/ui/SyncBar$SyncManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SyncBar$SyncManager;->onPause()V

    .line 106
    iget-object v0, p0, Lcom/miui/gallery/ui/SyncBar;->mDownloadManager:Lcom/miui/gallery/ui/SyncBar$DownloadManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->onPause()V

    .line 107
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/miui/gallery/ui/SyncBar;->mSyncManager:Lcom/miui/gallery/ui/SyncBar$SyncManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SyncBar$SyncManager;->onResume()V

    .line 100
    iget-object v0, p0, Lcom/miui/gallery/ui/SyncBar;->mDownloadManager:Lcom/miui/gallery/ui/SyncBar$DownloadManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->onResume()V

    .line 101
    return-void
.end method

.method public refresh(Lcom/miui/gallery/ui/SyncBar$PanelData;ZI)Z
    .locals 5
    .param p1, "data"    # Lcom/miui/gallery/ui/SyncBar$PanelData;
    .param p2, "autoShow"    # Z
    .param p3, "childKey"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 120
    iget-object v3, p0, Lcom/miui/gallery/ui/SyncBar;->mPanelItem:Lcom/miui/gallery/widget/PanelItemLayout;

    if-eqz v3, :cond_0

    .line 121
    iget-object v3, p0, Lcom/miui/gallery/ui/SyncBar;->mSyncManager:Lcom/miui/gallery/ui/SyncBar$SyncManager;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/SyncBar$SyncManager;->needShow()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/gallery/ui/SyncBar;->mDownloadManager:Lcom/miui/gallery/ui/SyncBar$DownloadManager;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->needShow()Z

    move-result v3

    if-nez v3, :cond_0

    .line 122
    iget-object v2, p0, Lcom/miui/gallery/ui/SyncBar;->mPanelManager:Lcom/miui/gallery/widget/PanelManager;

    invoke-interface {v2, p0, v1}, Lcom/miui/gallery/widget/PanelManager;->removeItem(Lcom/miui/gallery/widget/PanelItem;Z)Z

    .line 158
    :goto_0
    return v1

    .line 126
    :cond_0
    const/4 v0, 0x0

    .line 127
    .local v0, "needRefresh":Z
    if-ne p3, v2, :cond_3

    .line 128
    iput-object p1, p0, Lcom/miui/gallery/ui/SyncBar;->mDownloadPanelData:Lcom/miui/gallery/ui/SyncBar$PanelData;

    .line 129
    iget-object v3, p0, Lcom/miui/gallery/ui/SyncBar;->mDownloadManager:Lcom/miui/gallery/ui/SyncBar$DownloadManager;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->needShow()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 130
    iget-object v3, p0, Lcom/miui/gallery/ui/SyncBar;->mSyncManager:Lcom/miui/gallery/ui/SyncBar$SyncManager;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/SyncBar$SyncManager;->needShow()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/miui/gallery/ui/SyncBar;->sDownloadOverlayStatus:Ljava/util/LinkedList;

    iget-object v4, p0, Lcom/miui/gallery/ui/SyncBar;->mSyncManager:Lcom/miui/gallery/ui/SyncBar$SyncManager;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/SyncBar$SyncManager;->getCurSyncStatus()Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_1
    move v0, v2

    .line 133
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 134
    iget-object v3, p0, Lcom/miui/gallery/ui/SyncBar;->mSyncManager:Lcom/miui/gallery/ui/SyncBar$SyncManager;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/SyncBar$SyncManager;->needShow()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/miui/gallery/ui/SyncBar;->mSyncPanelData:Lcom/miui/gallery/ui/SyncBar$PanelData;

    if-eqz v3, :cond_9

    move v0, v2

    .line 135
    :goto_2
    iget-object v3, p0, Lcom/miui/gallery/ui/SyncBar;->mSyncManager:Lcom/miui/gallery/ui/SyncBar$SyncManager;

    iget-object v4, p0, Lcom/miui/gallery/ui/SyncBar;->mSyncManager:Lcom/miui/gallery/ui/SyncBar$SyncManager;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/SyncBar$SyncManager;->getCurSyncStatus()Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/ui/SyncBar$SyncManager;->access$000(Lcom/miui/gallery/ui/SyncBar$SyncManager;Lcom/miui/gallery/cloud/syncstate/SyncStatus;)Z

    move-result p2

    .line 136
    iget-object p1, p0, Lcom/miui/gallery/ui/SyncBar;->mSyncPanelData:Lcom/miui/gallery/ui/SyncBar$PanelData;

    .line 139
    :cond_3
    if-nez p3, :cond_6

    .line 140
    iput-object p1, p0, Lcom/miui/gallery/ui/SyncBar;->mSyncPanelData:Lcom/miui/gallery/ui/SyncBar$PanelData;

    .line 141
    iget-object v3, p0, Lcom/miui/gallery/ui/SyncBar;->mSyncManager:Lcom/miui/gallery/ui/SyncBar$SyncManager;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/SyncBar$SyncManager;->needShow()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 142
    iget-object v3, p0, Lcom/miui/gallery/ui/SyncBar;->mDownloadManager:Lcom/miui/gallery/ui/SyncBar$DownloadManager;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->needShow()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/miui/gallery/ui/SyncBar;->sDownloadOverlayStatus:Ljava/util/LinkedList;

    iget-object v4, p0, Lcom/miui/gallery/ui/SyncBar;->mSyncManager:Lcom/miui/gallery/ui/SyncBar$SyncManager;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/SyncBar$SyncManager;->getCurSyncStatus()Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_4
    move v0, v2

    .line 144
    :cond_5
    :goto_3
    if-nez v0, :cond_6

    .line 145
    iget-object v3, p0, Lcom/miui/gallery/ui/SyncBar;->mDownloadManager:Lcom/miui/gallery/ui/SyncBar$DownloadManager;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->needShow()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/miui/gallery/ui/SyncBar;->mDownloadPanelData:Lcom/miui/gallery/ui/SyncBar$PanelData;

    if-eqz v3, :cond_b

    move v0, v2

    .line 146
    :goto_4
    iget-object p1, p0, Lcom/miui/gallery/ui/SyncBar;->mDownloadPanelData:Lcom/miui/gallery/ui/SyncBar$PanelData;

    .line 149
    :cond_6
    if-eqz v0, :cond_7

    .line 150
    invoke-direct {p0}, Lcom/miui/gallery/ui/SyncBar;->ensureView()V

    .line 151
    iget-object v1, p0, Lcom/miui/gallery/ui/SyncBar;->mPanelItem:Lcom/miui/gallery/widget/PanelItemLayout;

    iget-object v2, p1, Lcom/miui/gallery/ui/SyncBar$PanelData;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/PanelItemLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v1, p0, Lcom/miui/gallery/ui/SyncBar;->mDesc:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/miui/gallery/ui/SyncBar$PanelData;->desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v1, p0, Lcom/miui/gallery/ui/SyncBar;->mPanelItem:Lcom/miui/gallery/widget/PanelItemLayout;

    iget-object v2, p1, Lcom/miui/gallery/ui/SyncBar$PanelData;->titleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/PanelItemLayout;->setTitleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    iget-object v1, p0, Lcom/miui/gallery/ui/SyncBar;->mPanelItem:Lcom/miui/gallery/widget/PanelItemLayout;

    iget-boolean v2, p1, Lcom/miui/gallery/ui/SyncBar$PanelData;->showArrow:Z

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/PanelItemLayout;->showArrow(Z)V

    .line 155
    iget-object v1, p0, Lcom/miui/gallery/ui/SyncBar;->mPanelItem:Lcom/miui/gallery/widget/PanelItemLayout;

    iget-object v2, p1, Lcom/miui/gallery/ui/SyncBar$PanelData;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/PanelItemLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v1, p0, Lcom/miui/gallery/ui/SyncBar;->mPanelManager:Lcom/miui/gallery/widget/PanelManager;

    invoke-interface {v1, p0, p2}, Lcom/miui/gallery/widget/PanelManager;->addItem(Lcom/miui/gallery/widget/PanelItem;Z)Z

    :cond_7
    move v1, v0

    .line 158
    goto/16 :goto_0

    :cond_8
    move v0, v1

    .line 130
    goto/16 :goto_1

    :cond_9
    move v0, v1

    .line 134
    goto :goto_2

    :cond_a
    move v0, v1

    .line 142
    goto :goto_3

    :cond_b
    move v0, v1

    .line 145
    goto :goto_4
.end method
