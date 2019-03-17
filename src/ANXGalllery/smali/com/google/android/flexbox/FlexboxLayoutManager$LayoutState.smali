.class Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;
.super Ljava/lang/Object;
.source "FlexboxLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/flexbox/FlexboxLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LayoutState"
.end annotation


# instance fields
.field private mAvailable:I

.field private mFlexLinePosition:I

.field private mInfinite:Z

.field private mItemDirection:I

.field private mLastScrollDelta:I

.field private mLayoutDirection:I

.field private mOffset:I

.field private mPosition:I

.field private mScrollingOffset:I

.field private mShouldRecycle:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 2907
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2947
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mItemDirection:I

    .line 2949
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/flexbox/FlexboxLayoutManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/flexbox/FlexboxLayoutManager$1;

    .prologue
    .line 2907
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .prologue
    .line 2907
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    return v0
.end method

.method static synthetic access$1002(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;
    .param p1, "x1"    # I

    .prologue
    .line 2907
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    return p1
.end method

.method static synthetic access$1100(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .prologue
    .line 2907
    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mInfinite:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;
    .param p1, "x1"    # Z

    .prologue
    .line 2907
    iput-boolean p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mInfinite:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .prologue
    .line 2907
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mAvailable:I

    return v0
.end method

.method static synthetic access$1202(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;
    .param p1, "x1"    # I

    .prologue
    .line 2907
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mAvailable:I

    return p1
.end method

.method static synthetic access$1500(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .prologue
    .line 2907
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    return v0
.end method

.method static synthetic access$1502(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;
    .param p1, "x1"    # I

    .prologue
    .line 2907
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    return p1
.end method

.method static synthetic access$1508(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I
    .locals 2
    .param p0, "x0"    # Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .prologue
    .line 2907
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    return v0
.end method

.method static synthetic access$1510(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I
    .locals 2
    .param p0, "x0"    # Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .prologue
    .line 2907
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    return v0
.end method

.method static synthetic access$2000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .prologue
    .line 2907
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    return v0
.end method

.method static synthetic access$2002(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;
    .param p1, "x1"    # I

    .prologue
    .line 2907
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    return p1
.end method

.method static synthetic access$2100(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Ljava/util/List;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;
    .param p1, "x1"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 2907
    invoke-direct {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->hasMore(Landroid/support/v7/widget/RecyclerView$State;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .prologue
    .line 2907
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    return v0
.end method

.method static synthetic access$2202(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;
    .param p1, "x1"    # I

    .prologue
    .line 2907
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    return p1
.end method

.method static synthetic access$2300(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .prologue
    .line 2907
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    return v0
.end method

.method static synthetic access$2302(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;
    .param p1, "x1"    # I

    .prologue
    .line 2907
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    return p1
.end method

.method static synthetic access$2500(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .prologue
    .line 2907
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mItemDirection:I

    return v0
.end method

.method static synthetic access$2502(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;
    .param p1, "x1"    # I

    .prologue
    .line 2907
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mItemDirection:I

    return p1
.end method

.method static synthetic access$2702(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;
    .param p1, "x1"    # I

    .prologue
    .line 2907
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLastScrollDelta:I

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .prologue
    .line 2907
    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mShouldRecycle:Z

    return v0
.end method

.method static synthetic access$502(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;
    .param p1, "x1"    # Z

    .prologue
    .line 2907
    iput-boolean p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mShouldRecycle:Z

    return p1
.end method

.method private hasMore(Landroid/support/v7/widget/RecyclerView$State;Ljava/util/List;)Z
    .locals 2
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$State;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2957
    .local p2, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    .line 2958
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LayoutState{mAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mAvailable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFlexLinePosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mScrollingOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLastScrollDelta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLastScrollDelta:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mItemDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mItemDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLayoutDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
