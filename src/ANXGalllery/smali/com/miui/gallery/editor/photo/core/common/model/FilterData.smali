.class public abstract Lcom/miui/gallery/editor/photo/core/common/model/FilterData;
.super Lcom/miui/gallery/editor/photo/core/Metadata;
.source "FilterData.java"


# instance fields
.field public final icon:I

.field public progress:I


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/Metadata;-><init>(Landroid/os/Parcel;)V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;->icon:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;->progress:I

    .line 54
    return-void
.end method

.method public constructor <init>(SLjava/lang/String;I)V
    .locals 0
    .param p1, "priority"    # S
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "icon"    # I

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/Metadata;-><init>(SLjava/lang/String;)V

    .line 15
    iput p3, p0, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;->icon:I

    .line 16
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-nez p1, :cond_1

    .line 30
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 29
    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;

    .line 30
    .local v0, "filterData":Lcom/miui/gallery/editor/photo/core/common/model/FilterData;
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;->name:Ljava/lang/String;

    iget-object v3, v0, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;->priority:I

    iget v3, v0, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;->priority:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;->priority:I

    add-int/2addr v0, v1

    return v0
.end method

.method public abstract isNone()Z
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 45
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/Metadata;->writeToParcel(Landroid/os/Parcel;I)V

    .line 46
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;->icon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;->progress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    return-void
.end method
