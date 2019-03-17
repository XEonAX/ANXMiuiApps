.class Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$a;
.super Ljava/lang/Object;
.source "nexOverlayItem.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/nexstreaming/nexeditorsdk/nexAnimate;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1984
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$1;)V
    .locals 0

    .prologue
    .line 1984
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/nexstreaming/nexeditorsdk/nexAnimate;Lcom/nexstreaming/nexeditorsdk/nexAnimate;)I
    .locals 2

    .prologue
    .line 1987
    iget v0, p1, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mStartTime:I

    iget v1, p2, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mStartTime:I

    if-le v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mStartTime:I

    iget v1, p2, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mStartTime:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1984
    check-cast p1, Lcom/nexstreaming/nexeditorsdk/nexAnimate;

    check-cast p2, Lcom/nexstreaming/nexeditorsdk/nexAnimate;

    invoke-virtual {p0, p1, p2}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$a;->a(Lcom/nexstreaming/nexeditorsdk/nexAnimate;Lcom/nexstreaming/nexeditorsdk/nexAnimate;)I

    move-result v0

    return v0
.end method
