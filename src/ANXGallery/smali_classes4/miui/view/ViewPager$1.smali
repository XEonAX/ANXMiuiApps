.class Lmiui/view/ViewPager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lmiui/view/ViewPager$ItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lmiui/view/ViewPager$ItemInfo;Lmiui/view/ViewPager$ItemInfo;)I
    .locals 0

    .line 101
    iget p1, p1, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget p2, p2, Lmiui/view/ViewPager$ItemInfo;->position:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 98
    check-cast p1, Lmiui/view/ViewPager$ItemInfo;

    check-cast p2, Lmiui/view/ViewPager$ItemInfo;

    invoke-virtual {p0, p1, p2}, Lmiui/view/ViewPager$1;->a(Lmiui/view/ViewPager$ItemInfo;Lmiui/view/ViewPager$ItemInfo;)I

    move-result p1

    return p1
.end method
