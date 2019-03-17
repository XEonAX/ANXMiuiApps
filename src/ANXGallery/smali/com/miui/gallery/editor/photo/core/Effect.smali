.class public final Lcom/miui/gallery/editor/photo/core/Effect;
.super Ljava/lang/Object;
.source "Effect.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/miui/gallery/editor/photo/core/SdkProvider;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final ADJUST:Lcom/miui/gallery/editor/photo/core/Effect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/editor/photo/core/Effect",
            "<",
            "Lcom/miui/gallery/editor/photo/core/SdkProvider",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/AdjustData;",
            "Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final BEAUTIFY:Lcom/miui/gallery/editor/photo/core/Effect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/editor/photo/core/Effect",
            "<",
            "Lcom/miui/gallery/editor/photo/core/SdkProvider",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/BeautifyData;",
            "Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/editor/photo/core/Effect;",
            ">;"
        }
    .end annotation
.end field

.field public static final CROP:Lcom/miui/gallery/editor/photo/core/Effect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/editor/photo/core/Effect",
            "<",
            "Lcom/miui/gallery/editor/photo/core/SdkProvider",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/CropData;",
            "Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final DOODLE:Lcom/miui/gallery/editor/photo/core/Effect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/editor/photo/core/Effect",
            "<",
            "Lcom/miui/gallery/editor/photo/core/SdkProvider",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/DoodleData;",
            "Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractDoodleFragment;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final FILTER:Lcom/miui/gallery/editor/photo/core/Effect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/editor/photo/core/Effect",
            "<",
            "Lcom/miui/gallery/editor/photo/core/SdkProvider",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/FilterCategory;",
            "Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final FRAME:Lcom/miui/gallery/editor/photo/core/Effect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/editor/photo/core/Effect",
            "<",
            "Lcom/miui/gallery/editor/photo/core/SdkProvider",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/FrameData;",
            "Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractFrameFragment;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final LONG_CROP:Lcom/miui/gallery/editor/photo/core/Effect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/editor/photo/core/Effect",
            "<",
            "Lcom/miui/gallery/editor/photo/core/SdkProvider",
            "<",
            "Ljava/lang/Object;",
            "Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractLongCropFragment;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final MIUIBEAUTIFY:Lcom/miui/gallery/editor/photo/core/Effect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/editor/photo/core/Effect",
            "<",
            "Lcom/miui/gallery/editor/photo/core/SdkProvider",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautifyData;",
            "Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final MOSAIC:Lcom/miui/gallery/editor/photo/core/Effect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/editor/photo/core/Effect",
            "<",
            "Lcom/miui/gallery/editor/photo/core/SdkProvider",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/MosaicData;",
            "Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractMosaicFragment;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final REMOVER:Lcom/miui/gallery/editor/photo/core/Effect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/editor/photo/core/Effect",
            "<",
            "Lcom/miui/gallery/editor/photo/core/SdkProvider",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/RemoverData;",
            "Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractRemoverFragment;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final STICKER:Lcom/miui/gallery/editor/photo/core/Effect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/editor/photo/core/Effect",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/provider/AbstractStickerProvider;",
            ">;"
        }
    .end annotation
.end field

.field public static final TEXT:Lcom/miui/gallery/editor/photo/core/Effect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/editor/photo/core/Effect",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/provider/AbstractTextProvider;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mName:Ljava/lang/String;

.field private mOrdinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    new-instance v0, Lcom/miui/gallery/editor/photo/core/Effect;

    const-string v1, "FILTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/Effect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/Effect;->FILTER:Lcom/miui/gallery/editor/photo/core/Effect;

    .line 36
    new-instance v0, Lcom/miui/gallery/editor/photo/core/Effect;

    const-string v1, "ADJUST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/Effect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/Effect;->ADJUST:Lcom/miui/gallery/editor/photo/core/Effect;

    .line 37
    new-instance v0, Lcom/miui/gallery/editor/photo/core/Effect;

    const-string v1, "CROP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/Effect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/Effect;->CROP:Lcom/miui/gallery/editor/photo/core/Effect;

    .line 38
    new-instance v0, Lcom/miui/gallery/editor/photo/core/Effect;

    const-string v1, "DOODLE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/Effect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/Effect;->DOODLE:Lcom/miui/gallery/editor/photo/core/Effect;

    .line 39
    new-instance v0, Lcom/miui/gallery/editor/photo/core/Effect;

    const-string v1, "STICKER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/Effect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/Effect;->STICKER:Lcom/miui/gallery/editor/photo/core/Effect;

    .line 40
    new-instance v0, Lcom/miui/gallery/editor/photo/core/Effect;

    const-string v1, "BEAUTIFY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/Effect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/Effect;->BEAUTIFY:Lcom/miui/gallery/editor/photo/core/Effect;

    .line 41
    new-instance v0, Lcom/miui/gallery/editor/photo/core/Effect;

    const-string v1, "LONG_CROP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/Effect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/Effect;->LONG_CROP:Lcom/miui/gallery/editor/photo/core/Effect;

    .line 42
    new-instance v0, Lcom/miui/gallery/editor/photo/core/Effect;

    const-string v1, "TEXT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/Effect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/Effect;->TEXT:Lcom/miui/gallery/editor/photo/core/Effect;

    .line 43
    new-instance v0, Lcom/miui/gallery/editor/photo/core/Effect;

    const-string v1, "MOSAIC"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/Effect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/Effect;->MOSAIC:Lcom/miui/gallery/editor/photo/core/Effect;

    .line 44
    new-instance v0, Lcom/miui/gallery/editor/photo/core/Effect;

    const-string v1, "REMOVER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/Effect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/Effect;->REMOVER:Lcom/miui/gallery/editor/photo/core/Effect;

    .line 45
    new-instance v0, Lcom/miui/gallery/editor/photo/core/Effect;

    const-string v1, "MIUIBEAUTIFY"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/Effect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/Effect;->MIUIBEAUTIFY:Lcom/miui/gallery/editor/photo/core/Effect;

    .line 46
    new-instance v0, Lcom/miui/gallery/editor/photo/core/Effect;

    const-string v1, "FRAME"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/Effect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/Effect;->FRAME:Lcom/miui/gallery/editor/photo/core/Effect;

    .line 74
    new-instance v0, Lcom/miui/gallery/editor/photo/core/Effect$1;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/Effect$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/Effect;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 87
    .local p0, "this":Lcom/miui/gallery/editor/photo/core/Effect;, "Lcom/miui/gallery/editor/photo/core/Effect<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/Effect;->mOrdinal:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/Effect;->mName:Ljava/lang/String;

    .line 90
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/miui/gallery/editor/photo/core/Effect$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/miui/gallery/editor/photo/core/Effect$1;

    .prologue
    .line 26
    .local p0, "this":Lcom/miui/gallery/editor/photo/core/Effect;, "Lcom/miui/gallery/editor/photo/core/Effect<TT;>;"
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/Effect;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ordinal"    # I

    .prologue
    .line 30
    .local p0, "this":Lcom/miui/gallery/editor/photo/core/Effect;, "Lcom/miui/gallery/editor/photo/core/Effect<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p2, p0, Lcom/miui/gallery/editor/photo/core/Effect;->mOrdinal:I

    .line 32
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/Effect;->mName:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public static values()[Lcom/miui/gallery/editor/photo/core/Effect;
    .locals 3

    .prologue
    .line 62
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/miui/gallery/editor/photo/core/Effect;

    const/4 v1, 0x0

    sget-object v2, Lcom/miui/gallery/editor/photo/core/Effect;->FILTER:Lcom/miui/gallery/editor/photo/core/Effect;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/miui/gallery/editor/photo/core/Effect;->ADJUST:Lcom/miui/gallery/editor/photo/core/Effect;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/miui/gallery/editor/photo/core/Effect;->CROP:Lcom/miui/gallery/editor/photo/core/Effect;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/miui/gallery/editor/photo/core/Effect;->DOODLE:Lcom/miui/gallery/editor/photo/core/Effect;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/miui/gallery/editor/photo/core/Effect;->STICKER:Lcom/miui/gallery/editor/photo/core/Effect;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/miui/gallery/editor/photo/core/Effect;->BEAUTIFY:Lcom/miui/gallery/editor/photo/core/Effect;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/miui/gallery/editor/photo/core/Effect;->LONG_CROP:Lcom/miui/gallery/editor/photo/core/Effect;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/miui/gallery/editor/photo/core/Effect;->TEXT:Lcom/miui/gallery/editor/photo/core/Effect;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/miui/gallery/editor/photo/core/Effect;->MOSAIC:Lcom/miui/gallery/editor/photo/core/Effect;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/miui/gallery/editor/photo/core/Effect;->REMOVER:Lcom/miui/gallery/editor/photo/core/Effect;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/miui/gallery/editor/photo/core/Effect;->MIUIBEAUTIFY:Lcom/miui/gallery/editor/photo/core/Effect;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/miui/gallery/editor/photo/core/Effect;->FRAME:Lcom/miui/gallery/editor/photo/core/Effect;

    aput-object v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 94
    .local p0, "this":Lcom/miui/gallery/editor/photo/core/Effect;, "Lcom/miui/gallery/editor/photo/core/Effect<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lcom/miui/gallery/editor/photo/core/Effect;, "Lcom/miui/gallery/editor/photo/core/Effect<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/Effect;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public ordinal()I
    .locals 1

    .prologue
    .line 54
    .local p0, "this":Lcom/miui/gallery/editor/photo/core/Effect;, "Lcom/miui/gallery/editor/photo/core/Effect<TT;>;"
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/Effect;->mOrdinal:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    .local p0, "this":Lcom/miui/gallery/editor/photo/core/Effect;, "Lcom/miui/gallery/editor/photo/core/Effect<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/Effect;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 99
    .local p0, "this":Lcom/miui/gallery/editor/photo/core/Effect;, "Lcom/miui/gallery/editor/photo/core/Effect<TT;>;"
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/Effect;->mOrdinal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/Effect;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    return-void
.end method
