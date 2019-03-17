.class Lcom/miui/gallery/ui/PhotoPagerHelper$11;
.super Ljava/lang/Object;
.source "PhotoPagerHelper.java"

# interfaces
.implements Lcom/miui/gallery/util/photoview/TrimMemoryCallback;


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
    .line 165
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPagerHelper$11;->this$0:Lcom/miui/gallery/ui/PhotoPagerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStopTrimMemory(I)V
    .locals 3
    .param p1, "flag"    # I

    .prologue
    .line 187
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPagerHelper$11;->this$0:Lcom/miui/gallery/ui/PhotoPagerHelper;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getActiveItemCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 188
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPagerHelper$11;->this$0:Lcom/miui/gallery/ui/PhotoPagerHelper;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getItemByNativeIndex(I)Lcom/miui/gallery/ui/PhotoPageItem;

    move-result-object v1

    .line 189
    .local v1, "item":Lcom/miui/gallery/ui/PhotoPageItem;
    if-eqz v1, :cond_0

    .line 190
    invoke-virtual {v1, p1}, Lcom/miui/gallery/ui/PhotoPageItem;->onStopTrimMemory(I)V

    .line 187
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    .end local v1    # "item":Lcom/miui/gallery/ui/PhotoPageItem;
    :cond_1
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 5
    .param p1, "flag"    # I

    .prologue
    .line 168
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 169
    .local v3, "remain":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/ui/PhotoPageItem;>;"
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPagerHelper$11;->this$0:Lcom/miui/gallery/ui/PhotoPagerHelper;

    invoke-static {v4}, Lcom/miui/gallery/ui/PhotoPagerHelper;->access$700(Lcom/miui/gallery/ui/PhotoPagerHelper;)Lcom/miui/gallery/widget/ViewPager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 171
    .local v0, "curItem":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    add-int/lit8 v4, v0, 0x1

    if-gt v1, v4, :cond_1

    .line 172
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPagerHelper$11;->this$0:Lcom/miui/gallery/ui/PhotoPagerHelper;

    invoke-virtual {v4, v1}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getItem(I)Lcom/miui/gallery/ui/PhotoPageItem;

    move-result-object v2

    .line 173
    .local v2, "item":Lcom/miui/gallery/ui/PhotoPageItem;
    if-eqz v2, :cond_0

    .line 174
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    .end local v2    # "item":Lcom/miui/gallery/ui/PhotoPageItem;
    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPagerHelper$11;->this$0:Lcom/miui/gallery/ui/PhotoPagerHelper;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getActiveItemCount()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 178
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPagerHelper$11;->this$0:Lcom/miui/gallery/ui/PhotoPagerHelper;

    invoke-virtual {v4, v1}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getItemByNativeIndex(I)Lcom/miui/gallery/ui/PhotoPageItem;

    move-result-object v2

    .line 179
    .restart local v2    # "item":Lcom/miui/gallery/ui/PhotoPageItem;
    if-eqz v2, :cond_2

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 180
    invoke-virtual {v2, p1}, Lcom/miui/gallery/ui/PhotoPageItem;->onTrimMemory(I)V

    .line 177
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 183
    .end local v2    # "item":Lcom/miui/gallery/ui/PhotoPageItem;
    :cond_3
    return-void
.end method
