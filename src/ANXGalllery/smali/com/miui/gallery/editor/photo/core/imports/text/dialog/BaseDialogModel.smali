.class public abstract Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;
.super Ljava/lang/Object;
.source "BaseDialogModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field public final backgroundColor:I

.field public final bottomOffsetPercent:F

.field public final cornerPosition:I

.field public dialogPath:Ljava/lang/String;

.field public dialogSmallIconPath:Ljava/lang/String;

.field public final isCorner:Z

.field public final leftOffsetPercent:F

.field public final name:Ljava/lang/String;

.field public final rightOffsetPercent:F

.field public final topOffsetPercent:F


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;FFFFZILjava/lang/String;)V
    .locals 0
    .param p1, "backgroundColor"    # I
    .param p2, "dialogSmallIconPath"    # Ljava/lang/String;
    .param p3, "dialogPath"    # Ljava/lang/String;
    .param p4, "leftOffsetPercent"    # F
    .param p5, "topOffsetPercent"    # F
    .param p6, "rightOffsetPercent"    # F
    .param p7, "bottomOffsetPercent"    # F
    .param p8, "isCorner"    # Z
    .param p9, "cornerPosition"    # I
    .param p10, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->dialogSmallIconPath:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->dialogPath:Ljava/lang/String;

    .line 25
    iput p4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->leftOffsetPercent:F

    .line 26
    iput p5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->topOffsetPercent:F

    .line 27
    iput p6, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->rightOffsetPercent:F

    .line 28
    iput p7, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->bottomOffsetPercent:F

    .line 29
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->backgroundColor:I

    .line 30
    iput-boolean p8, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->isCorner:Z

    .line 31
    iput p9, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->cornerPosition:I

    .line 32
    iput-object p10, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->name:Ljava/lang/String;

    .line 33
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->backgroundColor:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->leftOffsetPercent:F

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->topOffsetPercent:F

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->rightOffsetPercent:F

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->bottomOffsetPercent:F

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->isCorner:Z

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->cornerPosition:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->name:Ljava/lang/String;

    .line 76
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public configRect(Landroid/graphics/RectF;Z)V
    .locals 4
    .param p1, "rectF"    # Landroid/graphics/RectF;
    .param p2, "isMirror"    # Z

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 37
    .local v1, "width":F
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 38
    .local v0, "height":F
    iget v3, p1, Landroid/graphics/RectF;->left:F

    if-eqz p2, :cond_0

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->rightOffsetPercent:F

    mul-float/2addr v2, v1

    :goto_0
    add-float/2addr v2, v3

    iput v2, p1, Landroid/graphics/RectF;->left:F

    .line 39
    iget v3, p1, Landroid/graphics/RectF;->right:F

    if-eqz p2, :cond_1

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->leftOffsetPercent:F

    mul-float/2addr v2, v1

    :goto_1
    sub-float v2, v3, v2

    iput v2, p1, Landroid/graphics/RectF;->right:F

    .line 40
    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->topOffsetPercent:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, p1, Landroid/graphics/RectF;->top:F

    .line 41
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->bottomOffsetPercent:F

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    iput v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 42
    return-void

    .line 38
    :cond_0
    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->leftOffsetPercent:F

    mul-float/2addr v2, v1

    goto :goto_0

    .line 39
    :cond_1
    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->rightOffsetPercent:F

    mul-float/2addr v2, v1

    goto :goto_1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public hasDialog()Z
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->dialogPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract readDialogDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 57
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->backgroundColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->leftOffsetPercent:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 59
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->topOffsetPercent:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 60
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->rightOffsetPercent:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 61
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->bottomOffsetPercent:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 62
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->isCorner:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 63
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->cornerPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
