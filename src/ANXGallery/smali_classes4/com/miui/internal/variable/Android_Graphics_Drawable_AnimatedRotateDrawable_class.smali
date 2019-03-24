.class public abstract Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;
.super Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class$Factory;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "android.graphics.drawable.AnimatedRotateDrawable"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract setFramesCount(Landroid/graphics/drawable/Drawable;I)V
.end method

.method public abstract setFramesDuration(Landroid/graphics/drawable/Drawable;I)V
.end method

.method public abstract start(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract stop(Landroid/graphics/drawable/Drawable;)V
.end method
