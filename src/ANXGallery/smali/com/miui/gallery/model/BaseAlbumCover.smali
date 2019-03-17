.class public Lcom/miui/gallery/model/BaseAlbumCover;
.super Ljava/lang/Object;
.source "BaseAlbumCover.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/model/BaseAlbumCover;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public coverId:J

.field public coverPath:Ljava/lang/String;

.field public coverSha1:Ljava/lang/String;

.field public coverSize:J

.field public coverSyncState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/miui/gallery/model/BaseAlbumCover$1;

    invoke-direct {v0}, Lcom/miui/gallery/model/BaseAlbumCover$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/model/BaseAlbumCover;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/model/BaseAlbumCover;->coverId:J

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/model/BaseAlbumCover;->coverPath:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/model/BaseAlbumCover;->coverSha1:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/model/BaseAlbumCover;->coverSyncState:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/model/BaseAlbumCover;->coverSize:J

    .line 37
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/miui/gallery/model/BaseAlbumCover;->coverId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 22
    iget-object v0, p0, Lcom/miui/gallery/model/BaseAlbumCover;->coverPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/miui/gallery/model/BaseAlbumCover;->coverSha1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    iget v0, p0, Lcom/miui/gallery/model/BaseAlbumCover;->coverSyncState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    iget-wide v0, p0, Lcom/miui/gallery/model/BaseAlbumCover;->coverSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 26
    return-void
.end method
