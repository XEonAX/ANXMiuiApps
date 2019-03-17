.class Lcom/miui/gallery/editor/photo/core/imports/crop/CropStateData;
.super Lcom/miui/gallery/editor/photo/core/RenderData;
.source "CropStateData.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/crop/CropStateData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mEntry:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$CropEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropStateData$1;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/crop/CropStateData$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropStateData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/RenderData;-><init>(Landroid/os/Parcel;)V

    .line 28
    const-class v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$CropEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$CropEntry;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropStateData;->mEntry:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$CropEntry;

    .line 29
    return-void
.end method

.method constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$CropEntry;)V
    .locals 0
    .param p1, "entry"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$CropEntry;

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/RenderData;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropStateData;->mEntry:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$CropEntry;

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
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/RenderData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 23
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropStateData;->mEntry:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$CropEntry;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 24
    return-void
.end method
