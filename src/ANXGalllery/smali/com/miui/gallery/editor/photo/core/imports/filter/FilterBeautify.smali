.class public Lcom/miui/gallery/editor/photo/core/imports/filter/FilterBeautify;
.super Lcom/miui/gallery/editor/photo/core/common/model/BeautifyData;
.source "FilterBeautify.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/core/imports/filter/Renderable;


# static fields
.field private static BEAUTIFY_ITEM_PRIORITY:S

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/filter/FilterBeautify;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/16 v0, 0xa

    sput-short v0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterBeautify;->BEAUTIFY_ITEM_PRIORITY:S

    .line 95
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterBeautify$1;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterBeautify$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterBeautify;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "icon"    # I

    .prologue
    .line 27
    sget-short v0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterBeautify;->BEAUTIFY_ITEM_PRIORITY:S

    invoke-direct {p0, v0, p2, p3}, Lcom/miui/gallery/editor/photo/core/common/model/BeautifyData;-><init>(SLjava/lang/String;I)V

    .line 28
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterBeautify;->mId:I

    .line 29
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/common/model/BeautifyData;-><init>(Landroid/os/Parcel;)V

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterBeautify;->mId:I

    .line 93
    return-void
.end method

.method private getTablePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 47
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterBeautify;->mId:I

    packed-switch v0, :pswitch_data_0

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not table for this id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterBeautify;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :pswitch_0
    const-string v0, "filter/onekey/auto.png"

    .line 55
    :goto_0
    return-object v0

    .line 51
    :pswitch_1
    const-string v0, "filter/onekey/portrait.png"

    goto :goto_0

    .line 53
    :pswitch_2
    const-string v0, "filter/onekey/food.png"

    goto :goto_0

    .line 55
    :pswitch_3
    const-string v0, "filter/onekey/scene.png"

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public instantiate()Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;
    .locals 2

    .prologue
    .line 64
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterBeautify;->mId:I

    if-nez v1, :cond_1

    .line 65
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/EmptyGPUImageFilter;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/EmptyGPUImageFilter;-><init>()V

    .line 72
    .local v0, "filter":Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;
    :cond_0
    :goto_0
    return-object v0

    .line 67
    .end local v0    # "filter":Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;
    :cond_1
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterBeautify;->getTablePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    .line 68
    .restart local v0    # "filter":Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;
    invoke-virtual {v0}, Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;->isDegreeAdjustSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;->setDegree(I)V

    goto :goto_0
.end method

.method public isPortraitBeauty()Z
    .locals 2

    .prologue
    .line 76
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterBeautify;->mId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 86
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/common/model/BeautifyData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 87
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterBeautify;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    return-void
.end method
