.class Lcom/miui/gallery/widget/GalleryViewPager$ReversingOnPageSettledListener;
.super Ljava/lang/Object;
.source "GalleryViewPager.java"

# interfaces
.implements Lcom/miui/gallery/widget/ViewPager$OnPageSettledListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/GalleryViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReversingOnPageSettledListener"
.end annotation


# instance fields
.field mListener:Lcom/miui/gallery/widget/ViewPager$OnPageSettledListener;

.field final synthetic this$0:Lcom/miui/gallery/widget/GalleryViewPager;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/widget/GalleryViewPager;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/miui/gallery/widget/GalleryViewPager$ReversingOnPageSettledListener;->this$0:Lcom/miui/gallery/widget/GalleryViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/widget/GalleryViewPager;Lcom/miui/gallery/widget/GalleryViewPager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/widget/GalleryViewPager;
    .param p2, "x1"    # Lcom/miui/gallery/widget/GalleryViewPager$1;

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/GalleryViewPager$ReversingOnPageSettledListener;-><init>(Lcom/miui/gallery/widget/GalleryViewPager;)V

    return-void
.end method


# virtual methods
.method public onPageSettled(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 148
    iget-object v1, p0, Lcom/miui/gallery/widget/GalleryViewPager$ReversingOnPageSettledListener;->mListener:Lcom/miui/gallery/widget/ViewPager$OnPageSettledListener;

    if-eqz v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/miui/gallery/widget/GalleryViewPager$ReversingOnPageSettledListener;->this$0:Lcom/miui/gallery/widget/GalleryViewPager;

    invoke-static {v1}, Lcom/miui/gallery/widget/GalleryViewPager;->access$501(Lcom/miui/gallery/widget/GalleryViewPager;)Lcom/miui/gallery/widget/PagerAdapter;

    move-result-object v0

    .line 150
    .local v0, "adapter":Lcom/miui/gallery/widget/PagerAdapter;
    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Lcom/miui/gallery/widget/PagerAdapter;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/widget/GalleryViewPager$ReversingOnPageSettledListener;->this$0:Lcom/miui/gallery/widget/GalleryViewPager;

    invoke-static {v2}, Lcom/miui/gallery/widget/GalleryViewPager;->access$300(Lcom/miui/gallery/widget/GalleryViewPager;)Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/miui/gallery/widget/GalleryViewPager;->access$400(IIZ)I

    move-result p1

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/widget/GalleryViewPager$ReversingOnPageSettledListener;->mListener:Lcom/miui/gallery/widget/ViewPager$OnPageSettledListener;

    invoke-interface {v1, p1}, Lcom/miui/gallery/widget/ViewPager$OnPageSettledListener;->onPageSettled(I)V

    .line 155
    .end local v0    # "adapter":Lcom/miui/gallery/widget/PagerAdapter;
    :cond_1
    return-void
.end method
