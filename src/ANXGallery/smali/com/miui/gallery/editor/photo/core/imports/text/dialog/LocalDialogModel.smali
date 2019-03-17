.class public Lcom/miui/gallery/editor/photo/core/imports/text/dialog/LocalDialogModel;
.super Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;
.source "LocalDialogModel.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/text/dialog/LocalDialogModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDialogRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/LocalDialogModel$1;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/LocalDialogModel$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/LocalDialogModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIFFFFZILjava/lang/String;)V
    .locals 11
    .param p1, "backgroundColor"    # I
    .param p2, "dialogSmallIconRes"    # I
    .param p3, "dialogRes"    # I
    .param p4, "leftOffsetPercent"    # F
    .param p5, "topOffsetPercent"    # F
    .param p6, "rightOffsetPercent"    # F
    .param p7, "bottomOffsetPercent"    # F
    .param p8, "isCorner"    # Z
    .param p9, "cornerPosition"    # I
    .param p10, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    sget-object v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->DRAWABLE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->DRAWABLE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move v1, p1

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;-><init>(ILjava/lang/String;Ljava/lang/String;FFFFZILjava/lang/String;)V

    .line 15
    iput p3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/LocalDialogModel;->mDialogRes:I

    .line 16
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;-><init>(Landroid/os/Parcel;)V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/LocalDialogModel;->mDialogRes:I

    .line 46
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public hasDialog()Z
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/LocalDialogModel;->mDialogRes:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readDialogDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/LocalDialogModel;->hasDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/LocalDialogModel;->mDialogRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 28
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 40
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/LocalDialogModel;->mDialogRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    return-void
.end method
