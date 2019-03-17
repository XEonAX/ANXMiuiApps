.class final Lcom/miui/gallery/widget/ViewPager$1;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/miui/gallery/widget/ViewPager$ItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/gallery/widget/ViewPager$ItemInfo;Lcom/miui/gallery/widget/ViewPager$ItemInfo;)I
    .locals 2
    .param p1, "lhs"    # Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    .param p2, "rhs"    # Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    .prologue
    .line 114
    iget v0, p1, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    iget v1, p2, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 111
    check-cast p1, Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    check-cast p2, Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/widget/ViewPager$1;->compare(Lcom/miui/gallery/widget/ViewPager$ItemInfo;Lcom/miui/gallery/widget/ViewPager$ItemInfo;)I

    move-result v0

    return v0
.end method
