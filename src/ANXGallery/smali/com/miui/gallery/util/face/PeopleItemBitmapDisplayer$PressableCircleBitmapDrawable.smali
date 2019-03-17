.class public Lcom/miui/gallery/util/face/PeopleItemBitmapDisplayer$PressableCircleBitmapDrawable;
.super Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;
.source "PeopleItemBitmapDisplayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/face/PeopleItemBitmapDisplayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PressableCircleBitmapDrawable"
.end annotation


# instance fields
.field private mPressedColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mStateSpec:[I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/Integer;Ljava/lang/Integer;F)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "pressedColor"    # Ljava/lang/Integer;
    .param p3, "strokeColor"    # Ljava/lang/Integer;
    .param p4, "strokeWidth"    # F

    .prologue
    .line 54
    invoke-direct {p0, p1, p3, p4}, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;-><init>(Landroid/graphics/Bitmap;Ljava/lang/Integer;F)V

    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a7

    aput v2, v0, v1

    iput-object v0, p0, Lcom/miui/gallery/util/face/PeopleItemBitmapDisplayer$PressableCircleBitmapDrawable;->mStateSpec:[I

    .line 55
    if-eqz p2, :cond_0

    .line 56
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/miui/gallery/util/face/PeopleItemBitmapDisplayer$PressableCircleBitmapDrawable;->mPressedColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 59
    :cond_0
    return-void
.end method


# virtual methods
.method public isStateful()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 1
    .param p1, "state"    # [I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/gallery/util/face/PeopleItemBitmapDisplayer$PressableCircleBitmapDrawable;->mPressedColorFilter:Landroid/graphics/PorterDuffColorFilter;

    if-nez v0, :cond_0

    .line 64
    invoke-super {p0, p1}, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->onStateChange([I)Z

    move-result v0

    .line 72
    :goto_0
    return v0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/util/face/PeopleItemBitmapDisplayer$PressableCircleBitmapDrawable;->mStateSpec:[I

    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/miui/gallery/util/face/PeopleItemBitmapDisplayer$PressableCircleBitmapDrawable;->mPressedColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/util/face/PeopleItemBitmapDisplayer$PressableCircleBitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 71
    :goto_1
    invoke-virtual {p0}, Lcom/miui/gallery/util/face/PeopleItemBitmapDisplayer$PressableCircleBitmapDrawable;->invalidateSelf()V

    .line 72
    const/4 v0, 0x1

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/util/face/PeopleItemBitmapDisplayer$PressableCircleBitmapDrawable;->clearColorFilter()V

    goto :goto_1
.end method
