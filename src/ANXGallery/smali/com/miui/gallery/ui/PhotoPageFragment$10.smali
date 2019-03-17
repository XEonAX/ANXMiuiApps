.class Lcom/miui/gallery/ui/PhotoPageFragment$10;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"

# interfaces
.implements Lcom/miui/gallery/ui/PhotoPagerHelper$OnDisplayRectChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 1313
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$10;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayRectChanged(Landroid/graphics/RectF;)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 1317
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$10;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPageFragment;->isEntering()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$10;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPageFragment;->isExiting()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1327
    :cond_0
    :goto_0
    return-void

    .line 1320
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$10;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$10;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataItem(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v0

    .line 1321
    .local v0, "currentItem":Lcom/miui/gallery/model/BaseDataItem;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$10;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1800(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$10;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1800(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1322
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$10;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1800(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->updateRemoteView(Lcom/miui/gallery/model/BaseDataItem;Landroid/graphics/RectF;)V

    .line 1324
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$10;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1900(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1325
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$10;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1900(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->refreshMask(Z)V

    goto :goto_0
.end method
