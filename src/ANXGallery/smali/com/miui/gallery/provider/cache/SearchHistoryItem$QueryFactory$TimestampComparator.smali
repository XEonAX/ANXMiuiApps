.class Lcom/miui/gallery/provider/cache/SearchHistoryItem$QueryFactory$TimestampComparator;
.super Ljava/lang/Object;
.source "SearchHistoryItem.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cache/SearchHistoryItem$QueryFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimestampComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/miui/gallery/provider/cache/SearchHistoryItem;",
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
    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput-boolean p1, p0, Lcom/miui/gallery/provider/cache/SearchHistoryItem$QueryFactory$TimestampComparator;->mDescent:Z

    .line 277
    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/gallery/provider/cache/SearchHistoryItem;Lcom/miui/gallery/provider/cache/SearchHistoryItem;)I
    .locals 6
    .param p1, "lhs"    # Lcom/miui/gallery/provider/cache/SearchHistoryItem;
    .param p2, "rhs"    # Lcom/miui/gallery/provider/cache/SearchHistoryItem;

    .prologue
    .line 281
    iget-object v1, p1, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->timestamp:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v1, p2, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->timestamp:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    const/4 v0, -0x1

    .line 283
    .local v0, "value":I
    :goto_0
    iget-boolean v1, p0, Lcom/miui/gallery/provider/cache/SearchHistoryItem$QueryFactory$TimestampComparator;->mDescent:Z

    if-eqz v1, :cond_0

    neg-int v0, v0

    .end local v0    # "value":I
    :cond_0
    return v0

    .line 281
    :cond_1
    iget-object v1, p1, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->timestamp:Ljava/lang/Long;

    iget-object v2, p2, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->timestamp:Ljava/lang/Long;

    if-ne v1, v2, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 272
    check-cast p1, Lcom/miui/gallery/provider/cache/SearchHistoryItem;

    check-cast p2, Lcom/miui/gallery/provider/cache/SearchHistoryItem;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/provider/cache/SearchHistoryItem$QueryFactory$TimestampComparator;->compare(Lcom/miui/gallery/provider/cache/SearchHistoryItem;Lcom/miui/gallery/provider/cache/SearchHistoryItem;)I

    move-result v0

    return v0
.end method
