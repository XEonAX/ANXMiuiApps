.class Lcom/miui/gallery/widget/GalleryViewPager$ReversingAdapter;
.super Lcom/miui/gallery/widget/DelegatingPagerAdapter;
.source "GalleryViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/GalleryViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReversingAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/widget/GalleryViewPager;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/widget/GalleryViewPager;Lcom/miui/gallery/widget/PagerAdapter;)V
    .locals 0
    .param p2, "adapter"    # Lcom/miui/gallery/widget/PagerAdapter;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/miui/gallery/widget/GalleryViewPager$ReversingAdapter;->this$0:Lcom/miui/gallery/widget/GalleryViewPager;

    .line 160
    invoke-direct {p0, p2}, Lcom/miui/gallery/widget/DelegatingPagerAdapter;-><init>(Lcom/miui/gallery/widget/PagerAdapter;)V

    .line 161
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/miui/gallery/widget/GalleryViewPager$ReversingAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/miui/gallery/widget/GalleryViewPager$ReversingAdapter;->this$0:Lcom/miui/gallery/widget/GalleryViewPager;

    invoke-static {v1}, Lcom/miui/gallery/widget/GalleryViewPager;->access$300(Lcom/miui/gallery/widget/GalleryViewPager;)Z

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/miui/gallery/widget/GalleryViewPager;->access$400(IIZ)I

    move-result p2

    .line 166
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/widget/DelegatingPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 167
    return-void
.end method

.method public getItemPosition(Ljava/lang/Object;I)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "position"    # I

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/miui/gallery/widget/GalleryViewPager$ReversingAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/miui/gallery/widget/GalleryViewPager$ReversingAdapter;->this$0:Lcom/miui/gallery/widget/GalleryViewPager;

    invoke-static {v1}, Lcom/miui/gallery/widget/GalleryViewPager;->access$300(Lcom/miui/gallery/widget/GalleryViewPager;)Z

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/miui/gallery/widget/GalleryViewPager;->access$400(IIZ)I

    move-result p2

    .line 202
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/widget/DelegatingPagerAdapter;->getItemPosition(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public getPageWidth(I)F
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/miui/gallery/widget/GalleryViewPager$ReversingAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/miui/gallery/widget/GalleryViewPager$ReversingAdapter;->this$0:Lcom/miui/gallery/widget/GalleryViewPager;

    invoke-static {v1}, Lcom/miui/gallery/widget/GalleryViewPager;->access$300(Lcom/miui/gallery/widget/GalleryViewPager;)Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/miui/gallery/widget/GalleryViewPager;->access$400(IIZ)I

    move-result p1

    .line 178
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/DelegatingPagerAdapter;->getPageWidth(I)F

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/miui/gallery/widget/GalleryViewPager$ReversingAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/miui/gallery/widget/GalleryViewPager$ReversingAdapter;->this$0:Lcom/miui/gallery/widget/GalleryViewPager;

    invoke-static {v1}, Lcom/miui/gallery/widget/GalleryViewPager;->access$300(Lcom/miui/gallery/widget/GalleryViewPager;)Z

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/miui/gallery/widget/GalleryViewPager;->access$400(IIZ)I

    move-result p2

    .line 184
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/widget/DelegatingPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public refreshItem(Ljava/lang/Object;I)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "position"    # I

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/miui/gallery/widget/GalleryViewPager$ReversingAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/miui/gallery/widget/GalleryViewPager$ReversingAdapter;->this$0:Lcom/miui/gallery/widget/GalleryViewPager;

    invoke-static {v1}, Lcom/miui/gallery/widget/GalleryViewPager;->access$300(Lcom/miui/gallery/widget/GalleryViewPager;)Z

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/miui/gallery/widget/GalleryViewPager;->access$400(IIZ)I

    move-result p2

    .line 196
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/widget/DelegatingPagerAdapter;->refreshItem(Ljava/lang/Object;I)V

    .line 197
    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/miui/gallery/widget/GalleryViewPager$ReversingAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/miui/gallery/widget/GalleryViewPager$ReversingAdapter;->this$0:Lcom/miui/gallery/widget/GalleryViewPager;

    invoke-static {v1}, Lcom/miui/gallery/widget/GalleryViewPager;->access$300(Lcom/miui/gallery/widget/GalleryViewPager;)Z

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/miui/gallery/widget/GalleryViewPager;->access$400(IIZ)I

    move-result p2

    .line 190
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/widget/DelegatingPagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 191
    return-void
.end method
