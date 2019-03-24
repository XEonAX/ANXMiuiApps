.class public abstract Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;
.super Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class$Factory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getStateCount(Landroid/graphics/drawable/StateListDrawable;)I
.end method

.method public abstract getStateDrawable(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getStateSet(Landroid/graphics/drawable/StateListDrawable;I)[I
.end method
