.class Lcom/miui/gallery/widget/GalleryViewPager$ReversingOnPageChangeListener;
.super Ljava/lang/Object;
.source "GalleryViewPager.java"

# interfaces
.implements Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/GalleryViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReversingOnPageChangeListener"
.end annotation


# instance fields
.field mListener:Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;

.field final synthetic this$0:Lcom/miui/gallery/widget/GalleryViewPager;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/widget/GalleryViewPager;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/miui/gallery/widget/GalleryViewPager$ReversingOnPageChangeListener;->this$0:Lcom/miui/gallery/widget/GalleryViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/widget/GalleryViewPager;Lcom/miui/gallery/widget/GalleryViewPager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/widget/GalleryViewPager;
    .param p2, "x1"    # Lcom/miui/gallery/widget/GalleryViewPager$1;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/GalleryViewPager$ReversingOnPageChangeListener;-><init>(Lcom/miui/gallery/widget/GalleryViewPager;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryViewPager$ReversingOnPageChangeListener;->mListener:Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryViewPager$ReversingOnPageChangeListener;->mListener:Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 139
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryViewPager$ReversingOnPageChangeListener;->mListener:Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryViewPager$ReversingOnPageChangeListener;->mListener:Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 121
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 125
    iget-object v1, p0, Lcom/miui/gallery/widget/GalleryViewPager$ReversingOnPageChangeListener;->mListener:Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;

    if-eqz v1, :cond_1

    .line 126
    iget-object v1, p0, Lcom/miui/gallery/widget/GalleryViewPager$ReversingOnPageChangeListener;->this$0:Lcom/miui/gallery/widget/GalleryViewPager;

    invoke-static {v1}, Lcom/miui/gallery/widget/GalleryViewPager;->access$201(Lcom/miui/gallery/widget/GalleryViewPager;)Lcom/miui/gallery/widget/PagerAdapter;

    move-result-object v0

    .line 127
    .local v0, "adapter":Lcom/miui/gallery/widget/PagerAdapter;
    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0}, Lcom/miui/gallery/widget/PagerAdapter;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/widget/GalleryViewPager$ReversingOnPageChangeListener;->this$0:Lcom/miui/gallery/widget/GalleryViewPager;

    invoke-static {v2}, Lcom/miui/gallery/widget/GalleryViewPager;->access$300(Lcom/miui/gallery/widget/GalleryViewPager;)Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/miui/gallery/widget/GalleryViewPager;->access$400(IIZ)I

    move-result p1

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/widget/GalleryViewPager$ReversingOnPageChangeListener;->mListener:Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v1, p1}, Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 132
    .end local v0    # "adapter":Lcom/miui/gallery/widget/PagerAdapter;
    :cond_1
    return-void
.end method
