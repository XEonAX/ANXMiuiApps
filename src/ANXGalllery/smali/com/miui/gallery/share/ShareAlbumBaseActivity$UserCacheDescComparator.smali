.class public Lcom/miui/gallery/share/ShareAlbumBaseActivity$UserCacheDescComparator;
.super Ljava/lang/Object;
.source "ShareAlbumBaseActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/share/ShareAlbumBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserCacheDescComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/miui/gallery/share/CloudUserCacheEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/gallery/share/CloudUserCacheEntry;Lcom/miui/gallery/share/CloudUserCacheEntry;)I
    .locals 5
    .param p1, "lhs"    # Lcom/miui/gallery/share/CloudUserCacheEntry;
    .param p2, "rhs"    # Lcom/miui/gallery/share/CloudUserCacheEntry;

    .prologue
    .line 230
    iget-wide v0, p1, Lcom/miui/gallery/share/CloudUserCacheEntry;->mCreateTime:J

    .line 231
    .local v0, "lhsTime":J
    iget-wide v2, p2, Lcom/miui/gallery/share/CloudUserCacheEntry;->mCreateTime:J

    .line 232
    .local v2, "rhsTime":J
    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 233
    const/4 v4, 0x0

    .line 236
    :goto_0
    return v4

    :cond_0
    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 226
    check-cast p1, Lcom/miui/gallery/share/CloudUserCacheEntry;

    check-cast p2, Lcom/miui/gallery/share/CloudUserCacheEntry;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/share/ShareAlbumBaseActivity$UserCacheDescComparator;->compare(Lcom/miui/gallery/share/CloudUserCacheEntry;Lcom/miui/gallery/share/CloudUserCacheEntry;)I

    move-result v0

    return v0
.end method
