.class Lcom/miui/gallery/ui/PhotoPageFragment$9;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"

# interfaces
.implements Lcom/miui/gallery/ui/PhotoPagerHelper$OnScaleChangedListener;


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
    .line 1291
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$9;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScaleChanged(FFF)V
    .locals 3
    .param p1, "scaleFactorX"    # F
    .param p2, "scaleFactorY"    # F
    .param p3, "scale"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1295
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$9;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isEntering()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$9;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isExiting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1310
    :cond_0
    :goto_0
    return-void

    .line 1298
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$9;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1700(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1299
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$9;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1700(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->onPhotoScale(F)V

    .line 1302
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$9;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1100(Lcom/miui/gallery/ui/PhotoPageFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    cmpl-float v0, p2, v2

    if-lez v0, :cond_3

    cmpl-float v0, p3, v2

    if-lez v0, :cond_3

    .line 1303
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$9;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$200(Lcom/miui/gallery/ui/PhotoPageFragment;Z)V

    .line 1306
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$9;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1300(Lcom/miui/gallery/ui/PhotoPageFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    cmpg-float v0, p3, v2

    if-gez v0, :cond_0

    cmpg-float v0, p2, v2

    if-gez v0, :cond_0

    .line 1307
    invoke-static {}, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->getInstance()Lcom/miui/gallery/util/photoview/PhotoPageDataCache;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$9;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v1}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->isItemVisible(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1308
    invoke-static {}, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->getInstance()Lcom/miui/gallery/util/photoview/PhotoPageDataCache;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$9;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v1}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->viewToPosition(I)Z

    goto :goto_0
.end method
