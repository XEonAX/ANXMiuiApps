.class Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;
.super Ljava/lang/Object;
.source "HomePageTopBarController.java"

# interfaces
.implements Lcom/miui/gallery/widget/PanelManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/HomePageTopBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanelItemManager"
.end annotation


# instance fields
.field private mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/miui/gallery/widget/PanelItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentItem:Lcom/miui/gallery/widget/PanelItem;

.field private mIsItemEnable:Z

.field private mPanelBar:Lcom/miui/gallery/widget/PanelBar;

.field private mWaitingItems:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/miui/gallery/widget/PanelItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/gallery/ui/HomePageTopBarController;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/HomePageTopBarController;Lcom/miui/gallery/widget/PanelBar;)V
    .locals 3
    .param p2, "panelBar"    # Lcom/miui/gallery/widget/PanelBar;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->this$0:Lcom/miui/gallery/ui/HomePageTopBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->mIsItemEnable:Z

    .line 146
    iput-object p2, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->mPanelBar:Lcom/miui/gallery/widget/PanelBar;

    .line 147
    new-instance v0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager$1;-><init>(Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;Lcom/miui/gallery/ui/HomePageTopBarController;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->mComparator:Ljava/util/Comparator;

    .line 162
    new-instance v0, Ljava/util/PriorityQueue;

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->mComparator:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->mWaitingItems:Ljava/util/PriorityQueue;

    .line 163
    return-void
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;)Lcom/miui/gallery/widget/PanelItem;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->mCurrentItem:Lcom/miui/gallery/widget/PanelItem;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;)Lcom/miui/gallery/widget/PanelBar;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->mPanelBar:Lcom/miui/gallery/widget/PanelBar;

    return-object v0
.end method


# virtual methods
.method public addItem(Lcom/miui/gallery/widget/PanelItem;Z)Z
    .locals 6
    .param p1, "item"    # Lcom/miui/gallery/widget/PanelItem;
    .param p2, "autoShow"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 185
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/miui/gallery/widget/PanelItem;->getView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 186
    invoke-interface {p1}, Lcom/miui/gallery/widget/PanelItem;->getView()Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->mIsItemEnable:Z

    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    .line 187
    invoke-interface {p1}, Lcom/miui/gallery/widget/PanelItem;->getView()Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->mIsItemEnable:Z

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->mCurrentItem:Lcom/miui/gallery/widget/PanelItem;

    .line 190
    .local v1, "oldItem":Lcom/miui/gallery/widget/PanelItem;
    iget-object v4, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->mCurrentItem:Lcom/miui/gallery/widget/PanelItem;

    if-nez v4, :cond_4

    .line 191
    iput-object p1, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->mCurrentItem:Lcom/miui/gallery/widget/PanelItem;

    .line 205
    :cond_1
    :goto_0
    if-eqz p2, :cond_a

    .line 206
    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->mCurrentItem:Lcom/miui/gallery/widget/PanelItem;

    if-eq v1, v2, :cond_7

    iget-object v2, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->this$0:Lcom/miui/gallery/ui/HomePageTopBarController;

    invoke-static {v2}, Lcom/miui/gallery/ui/HomePageTopBarController;->access$200(Lcom/miui/gallery/ui/HomePageTopBarController;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->this$0:Lcom/miui/gallery/ui/HomePageTopBarController;

    invoke-static {v2}, Lcom/miui/gallery/ui/HomePageTopBarController;->access$300(Lcom/miui/gallery/ui/HomePageTopBarController;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 207
    iget-object v2, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->this$0:Lcom/miui/gallery/ui/HomePageTopBarController;

    new-instance v4, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager$2;

    invoke-direct {v4, p0}, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager$2;-><init>(Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;)V

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/ui/HomePageTopBarController;->access$600(Lcom/miui/gallery/ui/HomePageTopBarController;ZLcom/miui/gallery/widget/TwoStageDrawer$DrawerAnimEndListener;)V

    :cond_2
    :goto_1
    move v2, v3

    .line 224
    :cond_3
    :goto_2
    return v2

    .line 192
    :cond_4
    iget-object v4, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->mCurrentItem:Lcom/miui/gallery/widget/PanelItem;

    if-eq v4, p1, :cond_1

    .line 193
    iget-object v4, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->mComparator:Ljava/util/Comparator;

    iget-object v5, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->mCurrentItem:Lcom/miui/gallery/widget/PanelItem;

    invoke-interface {v4, v5, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_5

    .line 194
    iget-object v3, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->mWaitingItems:Ljava/util/PriorityQueue;

    invoke-virtual {v3, p1}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 195
    iget-object v3, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->mWaitingItems:Ljava/util/PriorityQueue;

    invoke-virtual {v3, p1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_2

    .line 199
    :cond_5
    iget-object v4, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->mWaitingItems:Ljava/util/PriorityQueue;

    iget-object v5, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->mCurrentItem:Lcom/miui/gallery/widget/PanelItem;

    invoke-virtual {v4, v5}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 200
    iget-object v4, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->mWaitingItems:Ljava/util/PriorityQueue;

    iget-object v5, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->mCurrentItem:Lcom/miui/gallery/widget/PanelItem;

    invoke-virtual {v4, v5}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 202
    :cond_6
    iput-object p1, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->mCurrentItem:Lcom/miui/gallery/widget/PanelItem;

    goto :goto_0

    .line 215
    :cond_7
    iget-object v2, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->mCurrentItem:Lcom/miui/gallery/widget/PanelItem;

    if-eq v1, v2, :cond_8

    .line 216
    iget-object v2, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->mPanelBar:Lcom/miui/gallery/widget/PanelBar;

    iget-object v4, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->mCurrentItem:Lcom/miui/gallery/widget/PanelItem;

    iget-object v5, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->this$0:Lcom/miui/gallery/ui/HomePageTopBarController;

    invoke-static {v5}, Lcom/miui/gallery/ui/HomePageTopBarController;->access$300(Lcom/miui/gallery/ui/HomePageTopBarController;)Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/miui/gallery/widget/PanelBar;->replaceItem(Lcom/miui/gallery/widget/PanelItem;Z)V

    .line 218
    :cond_8
    if-nez v1, :cond_9

    const/16 v0, 0x258

    .line 219
    .local v0, "delayInterval":I
    :goto_3
    iget-object v2, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->this$0:Lcom/miui/gallery/ui/HomePageTopBarController;

    invoke-static {v2, v0}, Lcom/miui/gallery/ui/HomePageTopBarController;->access$700(Lcom/miui/gallery/ui/HomePageTopBarController;I)V

    goto :goto_1

    .line 218
    .end local v0    # "delayInterval":I
    :cond_9
    const/16 v0, 0x12c

    goto :goto_3

    .line 221
    :cond_a
    iget-object v4, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->mCurrentItem:Lcom/miui/gallery/widget/PanelItem;

    if-eq v1, v4, :cond_2

    .line 222
    iget-object v4, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->mPanelBar:Lcom/miui/gallery/widget/PanelBar;

    iget-object v5, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->mCurrentItem:Lcom/miui/gallery/widget/PanelItem;

    invoke-virtual {v4, v5, v2}, Lcom/miui/gallery/widget/PanelBar;->replaceItem(Lcom/miui/gallery/widget/PanelItem;Z)V

    goto :goto_1
.end method

.method public hasItem()Z
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->mCurrentItem:Lcom/miui/gallery/widget/PanelItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeItem(Lcom/miui/gallery/widget/PanelItem;Z)Z
    .locals 5
    .param p1, "item"    # Lcom/miui/gallery/widget/PanelItem;
    .param p2, "autoHide"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 229
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->mCurrentItem:Lcom/miui/gallery/widget/PanelItem;

    .line 230
    .local v0, "oldItem":Lcom/miui/gallery/widget/PanelItem;
    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->mCurrentItem:Lcom/miui/gallery/widget/PanelItem;

    if-ne v1, p1, :cond_2

    .line 231
    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->mWaitingItems:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/widget/PanelItem;

    iput-object v1, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->mCurrentItem:Lcom/miui/gallery/widget/PanelItem;

    .line 232
    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->mCurrentItem:Lcom/miui/gallery/widget/PanelItem;

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->mPanelBar:Lcom/miui/gallery/widget/PanelBar;

    iget-object v3, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->mCurrentItem:Lcom/miui/gallery/widget/PanelItem;

    invoke-virtual {v1, v3, v4}, Lcom/miui/gallery/widget/PanelBar;->replaceItem(Lcom/miui/gallery/widget/PanelItem;Z)V

    .line 237
    :goto_0
    if-eqz p2, :cond_1

    .line 238
    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->this$0:Lcom/miui/gallery/ui/HomePageTopBarController;

    new-instance v3, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager$3;

    invoke-direct {v3, p0, v0}, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager$3;-><init>(Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;Lcom/miui/gallery/widget/PanelItem;)V

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/ui/HomePageTopBarController;->access$600(Lcom/miui/gallery/ui/HomePageTopBarController;ZLcom/miui/gallery/widget/TwoStageDrawer$DrawerAnimEndListener;)V

    :goto_1
    move v1, v2

    .line 251
    :goto_2
    return v1

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->mPanelBar:Lcom/miui/gallery/widget/PanelBar;

    invoke-virtual {v1, v4}, Lcom/miui/gallery/widget/PanelBar;->removeItem(Z)V

    goto :goto_0

    .line 247
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->this$0:Lcom/miui/gallery/ui/HomePageTopBarController;

    const/4 v3, 0x0

    invoke-static {v1, v4, v3}, Lcom/miui/gallery/ui/HomePageTopBarController;->access$600(Lcom/miui/gallery/ui/HomePageTopBarController;ZLcom/miui/gallery/widget/TwoStageDrawer$DrawerAnimEndListener;)V

    goto :goto_1

    .line 251
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->mWaitingItems:Ljava/util/PriorityQueue;

    invoke-virtual {v1, p1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_2
.end method

.method public setItemEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 166
    iget-boolean v1, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->mIsItemEnable:Z

    if-eq p1, v1, :cond_2

    .line 167
    iput-boolean p1, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->mIsItemEnable:Z

    .line 168
    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->mCurrentItem:Lcom/miui/gallery/widget/PanelItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->mCurrentItem:Lcom/miui/gallery/widget/PanelItem;

    invoke-interface {v1}, Lcom/miui/gallery/widget/PanelItem;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->mCurrentItem:Lcom/miui/gallery/widget/PanelItem;

    invoke-interface {v1}, Lcom/miui/gallery/widget/PanelItem;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 170
    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->mCurrentItem:Lcom/miui/gallery/widget/PanelItem;

    invoke-interface {v1}, Lcom/miui/gallery/widget/PanelItem;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setClickable(Z)V

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->mWaitingItems:Ljava/util/PriorityQueue;

    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->mWaitingItems:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/widget/PanelItem;

    .line 174
    .local v0, "waitingItem":Lcom/miui/gallery/widget/PanelItem;
    invoke-interface {v0}, Lcom/miui/gallery/widget/PanelItem;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 175
    invoke-interface {v0}, Lcom/miui/gallery/widget/PanelItem;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 176
    invoke-interface {v0}, Lcom/miui/gallery/widget/PanelItem;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 181
    .end local v0    # "waitingItem":Lcom/miui/gallery/widget/PanelItem;
    :cond_2
    return-void
.end method
