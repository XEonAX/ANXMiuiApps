.class public Landroid/support/v7/widget/GridLayout$Spec;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Spec"
.end annotation


# static fields
.field static final UNDEFINED:Landroid/support/v7/widget/GridLayout$Spec;


# instance fields
.field final alignment:Landroid/support/v7/widget/GridLayout$Alignment;

.field final span:Landroid/support/v7/widget/GridLayout$Interval;

.field final startDefined:Z

.field final weight:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2428
    const/high16 v0, -0x80000000

    invoke-static {v0}, Landroid/support/v7/widget/GridLayout;->spec(I)Landroid/support/v7/widget/GridLayout$Spec;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/GridLayout$Spec;->UNDEFINED:Landroid/support/v7/widget/GridLayout$Spec;

    return-void
.end method

.method constructor <init>(ZIILandroid/support/v7/widget/GridLayout$Alignment;F)V
    .locals 2
    .param p1, "startDefined"    # Z
    .param p2, "start"    # I
    .param p3, "size"    # I
    .param p4, "alignment"    # Landroid/support/v7/widget/GridLayout$Alignment;
    .param p5, "weight"    # F

    .prologue
    .line 2444
    new-instance v0, Landroid/support/v7/widget/GridLayout$Interval;

    add-int v1, p2, p3

    invoke-direct {v0, p2, v1}, Landroid/support/v7/widget/GridLayout$Interval;-><init>(II)V

    invoke-direct {p0, p1, v0, p4, p5}, Landroid/support/v7/widget/GridLayout$Spec;-><init>(ZLandroid/support/v7/widget/GridLayout$Interval;Landroid/support/v7/widget/GridLayout$Alignment;F)V

    .line 2445
    return-void
.end method

.method private constructor <init>(ZLandroid/support/v7/widget/GridLayout$Interval;Landroid/support/v7/widget/GridLayout$Alignment;F)V
    .locals 0
    .param p1, "startDefined"    # Z
    .param p2, "span"    # Landroid/support/v7/widget/GridLayout$Interval;
    .param p3, "alignment"    # Landroid/support/v7/widget/GridLayout$Alignment;
    .param p4, "weight"    # F

    .prologue
    .line 2436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2437
    iput-boolean p1, p0, Landroid/support/v7/widget/GridLayout$Spec;->startDefined:Z

    .line 2438
    iput-object p2, p0, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    .line 2439
    iput-object p3, p0, Landroid/support/v7/widget/GridLayout$Spec;->alignment:Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2440
    iput p4, p0, Landroid/support/v7/widget/GridLayout$Spec;->weight:F

    .line 2441
    return-void
.end method


# virtual methods
.method final copyWriteSpan(Landroid/support/v7/widget/GridLayout$Interval;)Landroid/support/v7/widget/GridLayout$Spec;
    .locals 4
    .param p1, "span"    # Landroid/support/v7/widget/GridLayout$Interval;

    .prologue
    .line 2458
    new-instance v0, Landroid/support/v7/widget/GridLayout$Spec;

    iget-boolean v1, p0, Landroid/support/v7/widget/GridLayout$Spec;->startDefined:Z

    iget-object v2, p0, Landroid/support/v7/widget/GridLayout$Spec;->alignment:Landroid/support/v7/widget/GridLayout$Alignment;

    iget v3, p0, Landroid/support/v7/widget/GridLayout$Spec;->weight:F

    invoke-direct {v0, v1, p1, v2, v3}, Landroid/support/v7/widget/GridLayout$Spec;-><init>(ZLandroid/support/v7/widget/GridLayout$Interval;Landroid/support/v7/widget/GridLayout$Alignment;F)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2481
    if-ne p0, p1, :cond_1

    .line 2498
    :cond_0
    :goto_0
    return v1

    .line 2484
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 2485
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 2488
    check-cast v0, Landroid/support/v7/widget/GridLayout$Spec;

    .line 2490
    .local v0, "spec":Landroid/support/v7/widget/GridLayout$Spec;
    iget-object v3, p0, Landroid/support/v7/widget/GridLayout$Spec;->alignment:Landroid/support/v7/widget/GridLayout$Alignment;

    iget-object v4, v0, Landroid/support/v7/widget/GridLayout$Spec;->alignment:Landroid/support/v7/widget/GridLayout$Alignment;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 2491
    goto :goto_0

    .line 2494
    :cond_4
    iget-object v3, p0, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    iget-object v4, v0, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/GridLayout$Interval;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 2495
    goto :goto_0
.end method

.method public getAbsoluteAlignment(Z)Landroid/support/v7/widget/GridLayout$Alignment;
    .locals 2
    .param p1, "horizontal"    # Z

    .prologue
    .line 2448
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Spec;->alignment:Landroid/support/v7/widget/GridLayout$Alignment;

    sget-object v1, Landroid/support/v7/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/support/v7/widget/GridLayout$Alignment;

    if-eq v0, v1, :cond_0

    .line 2449
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Spec;->alignment:Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2454
    :goto_0
    return-object v0

    .line 2451
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/GridLayout$Spec;->weight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 2452
    if-eqz p1, :cond_1

    sget-object v0, Landroid/support/v7/widget/GridLayout;->START:Landroid/support/v7/widget/GridLayout$Alignment;

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/support/v7/widget/GridLayout;->BASELINE:Landroid/support/v7/widget/GridLayout$Alignment;

    goto :goto_0

    .line 2454
    :cond_2
    sget-object v0, Landroid/support/v7/widget/GridLayout;->FILL:Landroid/support/v7/widget/GridLayout$Alignment;

    goto :goto_0
.end method

.method final getFlexibility()I
    .locals 2

    .prologue
    .line 2466
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Spec;->alignment:Landroid/support/v7/widget/GridLayout$Alignment;

    sget-object v1, Landroid/support/v7/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/support/v7/widget/GridLayout$Alignment;

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/GridLayout$Spec;->weight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 2503
    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayout$Interval;->hashCode()I

    move-result v0

    .line 2504
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/support/v7/widget/GridLayout$Spec;->alignment:Landroid/support/v7/widget/GridLayout$Alignment;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 2505
    return v0
.end method
