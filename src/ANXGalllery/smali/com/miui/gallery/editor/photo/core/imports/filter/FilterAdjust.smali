.class public Lcom/miui/gallery/editor/photo/core/imports/filter/FilterAdjust;
.super Lcom/miui/gallery/editor/photo/core/common/model/AdjustData;
.source "FilterAdjust.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/core/imports/filter/Renderable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/filter/FilterAdjust;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mId:I

.field private mIsMid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterAdjust$1;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterAdjust$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterAdjust;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ISLjava/lang/String;IZ)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "priority"    # S
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "icon"    # I
    .param p5, "isMid"    # Z

    .prologue
    .line 25
    invoke-direct {p0, p2, p3, p4}, Lcom/miui/gallery/editor/photo/core/common/model/AdjustData;-><init>(SLjava/lang/String;I)V

    .line 26
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterAdjust;->mId:I

    .line 27
    iput-boolean p5, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterAdjust;->mIsMid:Z

    .line 28
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/common/model/AdjustData;-><init>(Landroid/os/Parcel;)V

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterAdjust;->mId:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterAdjust;->mIsMid:Z

    .line 85
    return-void

    .line 84
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 32
    const/16 v0, 0x64

    return v0
.end method

.method public getMin()I
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterAdjust;->mIsMid:Z

    if-eqz v0, :cond_0

    const/16 v0, -0x64

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public instantiate()Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;
    .locals 4

    .prologue
    .line 52
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterAdjust;->progress:I

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterAdjust;->getMin()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterAdjust;->getMax()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterAdjust;->getMax()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterAdjust;->getMin()I

    move-result v3

    sub-int/2addr v2, v3

    div-int v0, v1, v2

    .line 53
    .local v0, "percent":I
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterAdjust;->mId:I

    packed-switch v1, :pswitch_data_0

    .line 65
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not support adjust id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterAdjust;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :pswitch_0
    new-instance v1, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUBrightnessFilter;

    invoke-direct {v1, v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUBrightnessFilter;-><init>(I)V

    .line 63
    :goto_0
    return-object v1

    .line 57
    :pswitch_1
    new-instance v1, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUContrastFilter;

    invoke-direct {v1, v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUContrastFilter;-><init>(I)V

    goto :goto_0

    .line 59
    :pswitch_2
    new-instance v1, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageSaturationFilter;

    invoke-direct {v1, v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageSaturationFilter;-><init>(I)V

    goto :goto_0

    .line 61
    :pswitch_3
    new-instance v1, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageSharpenFilter;

    invoke-direct {v1, v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageSharpenFilter;-><init>(I)V

    goto :goto_0

    .line 63
    :pswitch_4
    new-instance v1, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageVignetteFilter;

    invoke-direct {v1, v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageVignetteFilter;-><init>(I)V

    goto :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public isMid()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterAdjust;->mIsMid:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/common/model/AdjustData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 77
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterAdjust;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterAdjust;->mIsMid:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 79
    return-void

    .line 78
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
