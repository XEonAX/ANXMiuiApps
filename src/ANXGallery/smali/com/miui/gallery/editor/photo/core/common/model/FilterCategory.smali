.class public abstract Lcom/miui/gallery/editor/photo/core/common/model/FilterCategory;
.super Lcom/miui/gallery/editor/photo/core/Metadata;
.source "FilterCategory.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public highlighColor:I

.field public subHighlighColor:I

.field public subItemSize:I


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/Metadata;-><init>(Landroid/os/Parcel;)V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/common/model/FilterCategory;->highlighColor:I

    .line 36
    return-void
.end method

.method public constructor <init>(SLjava/lang/String;I)V
    .locals 0
    .param p1, "priority"    # S
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "highlighColor"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/Metadata;-><init>(SLjava/lang/String;)V

    .line 17
    iput p3, p0, Lcom/miui/gallery/editor/photo/core/common/model/FilterCategory;->highlighColor:I

    .line 18
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

.method public abstract getFilterDatas()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/miui/gallery/editor/photo/core/common/model/FilterData;",
            ">;"
        }
    .end annotation
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 29
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/Metadata;->writeToParcel(Landroid/os/Parcel;I)V

    .line 30
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/common/model/FilterCategory;->highlighColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    return-void
.end method
