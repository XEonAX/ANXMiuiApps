.class Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$TitleComparator;
.super Ljava/lang/Object;
.source "MediaItem.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TitleComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/miui/gallery/provider/cache/MediaItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mDescent:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "descent"    # Z

    .prologue
    .line 771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 772
    iput-boolean p1, p0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$TitleComparator;->mDescent:Z

    .line 773
    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/gallery/provider/cache/MediaItem;Lcom/miui/gallery/provider/cache/MediaItem;)I
    .locals 3
    .param p1, "lhs"    # Lcom/miui/gallery/provider/cache/MediaItem;
    .param p2, "rhs"    # Lcom/miui/gallery/provider/cache/MediaItem;

    .prologue
    .line 778
    invoke-static {p1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$500(Lcom/miui/gallery/provider/cache/MediaItem;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Lcom/miui/gallery/provider/cache/MediaItem;->access$500(Lcom/miui/gallery/provider/cache/MediaItem;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 779
    invoke-static {p1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$500(Lcom/miui/gallery/provider/cache/MediaItem;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/miui/gallery/provider/cache/MediaItem;->access$500(Lcom/miui/gallery/provider/cache/MediaItem;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 787
    .local v0, "result":I
    :goto_0
    iget-boolean v1, p0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$TitleComparator;->mDescent:Z

    if-eqz v1, :cond_0

    neg-int v0, v0

    .end local v0    # "result":I
    :cond_0
    :goto_1
    return v0

    .line 780
    :cond_1
    invoke-static {p1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$500(Lcom/miui/gallery/provider/cache/MediaItem;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 781
    const/4 v0, 0x1

    .restart local v0    # "result":I
    goto :goto_0

    .line 782
    .end local v0    # "result":I
    :cond_2
    invoke-static {p2}, Lcom/miui/gallery/provider/cache/MediaItem;->access$500(Lcom/miui/gallery/provider/cache/MediaItem;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 783
    const/4 v0, -0x1

    .restart local v0    # "result":I
    goto :goto_0

    .line 785
    .end local v0    # "result":I
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 768
    check-cast p1, Lcom/miui/gallery/provider/cache/MediaItem;

    check-cast p2, Lcom/miui/gallery/provider/cache/MediaItem;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$TitleComparator;->compare(Lcom/miui/gallery/provider/cache/MediaItem;Lcom/miui/gallery/provider/cache/MediaItem;)I

    move-result v0

    return v0
.end method
