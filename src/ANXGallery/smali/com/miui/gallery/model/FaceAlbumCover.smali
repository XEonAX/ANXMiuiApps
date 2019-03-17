.class public Lcom/miui/gallery/model/FaceAlbumCover;
.super Lcom/miui/gallery/model/BaseAlbumCover;
.source "FaceAlbumCover.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/model/FaceAlbumCover;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public faceRect:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/miui/gallery/model/FaceAlbumCover$1;

    invoke-direct {v0}, Lcom/miui/gallery/model/FaceAlbumCover$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/model/FaceAlbumCover;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/miui/gallery/model/BaseAlbumCover;-><init>()V

    .line 22
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/miui/gallery/model/BaseAlbumCover;-><init>(Landroid/os/Parcel;)V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/model/FaceAlbumCover;->faceRect:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 17
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/model/BaseAlbumCover;->writeToParcel(Landroid/os/Parcel;I)V

    .line 18
    iget-object v0, p0, Lcom/miui/gallery/model/FaceAlbumCover;->faceRect:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    return-void
.end method
