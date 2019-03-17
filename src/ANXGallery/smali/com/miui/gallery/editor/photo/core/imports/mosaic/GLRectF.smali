.class public Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;
.super Ljava/lang/Object;
.source "GLRectF.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF$Iterator;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bottom:F

.field private left:F

.field private right:F

.field private top:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 149
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF$1;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->left:F

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->top:F

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->right:F

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->bottom:F

    .line 147
    return-void
.end method

.method public constructor <init>([F)V
    .locals 0
    .param p1, "vertex"    # [F

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->setByVertex([F)V

    .line 17
    return-void
.end method


# virtual methods
.method public centerX()F
    .locals 2

    .prologue
    .line 55
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->left:F

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->right:F

    add-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    return v0
.end method

.method public final centerY()F
    .locals 2

    .prologue
    .line 59
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->top:F

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->bottom:F

    add-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public getVertex([F)V
    .locals 2
    .param p1, "vertex"    # [F

    .prologue
    .line 34
    const/4 v0, 0x0

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->left:F

    aput v1, p1, v0

    .line 35
    const/4 v0, 0x1

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->bottom:F

    aput v1, p1, v0

    .line 37
    const/4 v0, 0x2

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->right:F

    aput v1, p1, v0

    .line 38
    const/4 v0, 0x3

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->bottom:F

    aput v1, p1, v0

    .line 40
    const/4 v0, 0x4

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->left:F

    aput v1, p1, v0

    .line 41
    const/4 v0, 0x5

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->top:F

    aput v1, p1, v0

    .line 43
    const/4 v0, 0x6

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->right:F

    aput v1, p1, v0

    .line 44
    const/4 v0, 0x7

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->top:F

    aput v1, p1, v0

    .line 45
    return-void
.end method

.method public final height()F
    .locals 2

    .prologue
    .line 67
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->top:F

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->bottom:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public offset(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 71
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->left:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->left:F

    .line 72
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->top:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->top:F

    .line 73
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->right:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->right:F

    .line 74
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->bottom:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->bottom:F

    .line 75
    return-void
.end method

.method public set(Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;)V
    .locals 1
    .param p1, "glRectF"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;

    .prologue
    .line 20
    iget v0, p1, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->left:F

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->left:F

    .line 21
    iget v0, p1, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->top:F

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->top:F

    .line 22
    iget v0, p1, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->right:F

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->right:F

    .line 23
    iget v0, p1, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->bottom:F

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->bottom:F

    .line 24
    return-void
.end method

.method public setByVertex([F)V
    .locals 1
    .param p1, "vertex"    # [F

    .prologue
    .line 27
    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->left:F

    .line 28
    const/4 v0, 0x5

    aget v0, p1, v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->top:F

    .line 29
    const/4 v0, 0x2

    aget v0, p1, v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->right:F

    .line 30
    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->bottom:F

    .line 31
    return-void
.end method

.method public final width()F
    .locals 2

    .prologue
    .line 63
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->right:F

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->left:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 136
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->left:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 137
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->top:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 138
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->right:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 139
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->bottom:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 140
    return-void
.end method
