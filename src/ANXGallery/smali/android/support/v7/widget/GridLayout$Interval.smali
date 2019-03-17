.class final Landroid/support/v7/widget/GridLayout$Interval;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Interval"
.end annotation


# instance fields
.field public final max:I

.field public final min:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 2343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2344
    iput p1, p0, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    .line 2345
    iput p2, p0, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    .line 2346
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2368
    if-ne p0, p1, :cond_1

    .line 2385
    :cond_0
    :goto_0
    return v1

    .line 2371
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 2372
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 2375
    check-cast v0, Landroid/support/v7/widget/GridLayout$Interval;

    .line 2377
    .local v0, "interval":Landroid/support/v7/widget/GridLayout$Interval;
    iget v3, p0, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    iget v4, v0, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 2378
    goto :goto_0

    .line 2381
    :cond_4
    iget v3, p0, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    iget v4, v0, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 2382
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 2390
    iget v0, p0, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    .line 2391
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    add-int v0, v1, v2

    .line 2392
    return v0
.end method

.method inverse()Landroid/support/v7/widget/GridLayout$Interval;
    .locals 3

    .prologue
    .line 2353
    new-instance v0, Landroid/support/v7/widget/GridLayout$Interval;

    iget v1, p0, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    iget v2, p0, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayout$Interval;-><init>(II)V

    return-object v0
.end method

.method size()I
    .locals 2

    .prologue
    .line 2349
    iget v0, p0, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    iget v1, p0, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
