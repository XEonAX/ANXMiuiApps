.class public abstract Lcom/miui/gallery/editor/photo/core/common/model/AdjustData;
.super Lcom/miui/gallery/editor/photo/core/Metadata;
.source "AdjustData.java"


# instance fields
.field public final icon:I

.field public progress:I


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/Metadata;-><init>(Landroid/os/Parcel;)V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/common/model/AdjustData;->icon:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/common/model/AdjustData;->progress:I

    .line 39
    return-void
.end method

.method public constructor <init>(SLjava/lang/String;I)V
    .locals 1
    .param p1, "priority"    # S
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "icon"    # I

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/Metadata;-><init>(SLjava/lang/String;)V

    .line 13
    iput p3, p0, Lcom/miui/gallery/editor/photo/core/common/model/AdjustData;->icon:I

    .line 14
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/common/model/AdjustData;->getMin()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/common/model/AdjustData;->progress:I

    .line 15
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getMax()I
.end method

.method public abstract getMin()I
.end method

.method public abstract isMid()Z
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/Metadata;->writeToParcel(Landroid/os/Parcel;I)V

    .line 31
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/common/model/AdjustData;->icon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/common/model/AdjustData;->progress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    return-void
.end method
