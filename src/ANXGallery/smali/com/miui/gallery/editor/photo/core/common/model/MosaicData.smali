.class public abstract Lcom/miui/gallery/editor/photo/core/common/model/MosaicData;
.super Lcom/miui/gallery/editor/photo/core/Metadata;
.source "MosaicData.java"


# instance fields
.field public final iconPath:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/Metadata;-><init>(Landroid/os/Parcel;)V

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/common/model/MosaicData;->iconPath:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(SLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "priority"    # S
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "iconPath"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/Metadata;-><init>(SLjava/lang/String;)V

    .line 12
    iput-object p3, p0, Lcom/miui/gallery/editor/photo/core/common/model/MosaicData;->iconPath:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 22
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/Metadata;->writeToParcel(Landroid/os/Parcel;I)V

    .line 23
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/common/model/MosaicData;->iconPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    return-void
.end method
