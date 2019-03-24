.class Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/app/ActionBarViewPagerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollStatus"
.end annotation


# static fields
.field private static final bV:F = 1.0E-4f


# instance fields
.field private bW:I

.field private bX:F

.field bY:Z

.field bZ:Z

.field ca:I

.field cb:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->bW:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/app/ActionBarViewPagerController$1;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;-><init>()V

    return-void
.end method

.method private b(IF)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->bW:I

    .line 67
    iput p2, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->bX:F

    .line 68
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->bY:Z

    .line 69
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->bZ:Z

    .line 70
    return-void
.end method

.method private c(IF)V
    .locals 2

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->bY:Z

    .line 74
    iget v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->bX:F

    cmpl-float p2, p2, v1

    if-lez p2, :cond_0

    .line 75
    const/4 v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    nop

    .line 75
    :goto_0
    if-eqz v0, :cond_1

    move p2, p1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p1, 0x1

    :goto_1
    iput p2, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->ca:I

    .line 76
    if-eqz v0, :cond_2

    add-int/lit8 p1, p1, 0x1

    :cond_2
    iput p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->cb:I

    .line 77
    return-void
.end method

.method private onScrollEnd()V
    .locals 1

    .line 80
    iget v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->cb:I

    iput v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->ca:I

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->bW:I

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->bX:F

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->bZ:Z

    .line 84
    return-void
.end method


# virtual methods
.method a(IF)V
    .locals 1

    .line 56
    const v0, 0x38d1b717    # 1.0E-4f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->onScrollEnd()V

    goto :goto_0

    .line 58
    :cond_0
    iget v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->bW:I

    if-eq v0, p1, :cond_1

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->b(IF)V

    goto :goto_0

    .line 60
    :cond_1
    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->bY:Z

    if-eqz v0, :cond_2

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->c(IF)V

    .line 63
    :cond_2
    :goto_0
    return-void
.end method
