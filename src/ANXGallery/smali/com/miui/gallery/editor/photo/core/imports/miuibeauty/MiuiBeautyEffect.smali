.class public Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;
.super Ljava/lang/Object;
.source "MiuiBeautyEffect.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mBeautyType:Lcom/miui/filtersdk/beauty/BeautyParameterType;

.field public mName:Ljava/lang/String;

.field public mOrdinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect$1;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;->mOrdinal:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;->mName:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->valueOf(Ljava/lang/String;)Lcom/miui/filtersdk/beauty/BeautyParameterType;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;->mBeautyType:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/miui/filtersdk/beauty/BeautyParameterType;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ordinal"    # I
    .param p3, "type"    # Lcom/miui/filtersdk/beauty/BeautyParameterType;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p2, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;->mOrdinal:I

    .line 47
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;->mName:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;->mBeautyType:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    .line 49
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public needFace()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 15
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;->mBeautyType:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    if-nez v1, :cond_0

    .line 23
    :goto_0
    :pswitch_0
    return v0

    .line 18
    :cond_0
    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect$2;->$SwitchMap$com$miui$filtersdk$beauty$BeautyParameterType:[I

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;->mBeautyType:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-virtual {v2}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 23
    const/4 v0, 0x1

    goto :goto_0

    .line 18
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 58
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;->mOrdinal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;->mBeautyType:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-virtual {v0}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    return-void
.end method
