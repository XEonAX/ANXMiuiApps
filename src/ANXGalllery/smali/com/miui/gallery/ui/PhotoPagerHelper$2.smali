.class Lcom/miui/gallery/ui/PhotoPagerHelper$2;
.super Ljava/lang/Object;
.source "PhotoPagerHelper.java"

# interfaces
.implements Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPagerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPagerHelper;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPagerHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/PhotoPagerHelper;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPagerHelper$2;->this$0:Lcom/miui/gallery/ui/PhotoPagerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper$2;->this$0:Lcom/miui/gallery/ui/PhotoPagerHelper;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoPagerHelper;->setPageScrollStateChanged(I)V

    .line 61
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 51
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper$2;->this$0:Lcom/miui/gallery/ui/PhotoPagerHelper;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoPagerHelper;->setPageChanged(I)V

    .line 56
    return-void
.end method
