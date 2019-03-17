.class public abstract Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;
.super Lcom/miui/gallery/editor/photo/core/common/model/MosaicData;
.source "MosaicGLEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;
    }
.end annotation


# instance fields
.field public final type:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/common/model/MosaicData;-><init>(Landroid/os/Parcel;)V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 36
    .local v0, "tmpType":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;->type:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;

    .line 37
    return-void

    .line 36
    :cond_0
    invoke-static {}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;->values()[Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;

    move-result-object v1

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method public constructor <init>(SLjava/lang/String;Ljava/lang/String;Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;)V
    .locals 0
    .param p1, "priority"    # S
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "iconPath"    # Ljava/lang/String;
    .param p4, "type"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;

    .prologue
    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/editor/photo/core/common/model/MosaicData;-><init>(SLjava/lang/String;Ljava/lang/String;)V

    .line 13
    iput-object p4, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;->type:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;

    .line 14
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 29
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/common/model/MosaicData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 30
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;->type:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;->type:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;->ordinal()I

    move-result v0

    goto :goto_0
.end method
