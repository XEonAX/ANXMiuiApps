.class public Lcom/miui/gallery/share/Path;
.super Ljava/lang/Object;
.source "Path.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/share/Path;",
            ">;"
        }
    .end annotation
.end field

.field static sSetCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/miui/gallery/share/Path;",
            "Lcom/miui/gallery/share/CloudSharerMediaSet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mId:J

.field private mIsBabyAlbum:Z

.field private mIsOtherShared:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/miui/gallery/share/Path;->sSetCache:Ljava/util/WeakHashMap;

    .line 39
    new-instance v0, Lcom/miui/gallery/share/Path$1;

    invoke-direct {v0}, Lcom/miui/gallery/share/Path$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/share/Path;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "isOtherShare"    # Z

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-wide p1, p0, Lcom/miui/gallery/share/Path;->mId:J

    .line 24
    iput-boolean p3, p0, Lcom/miui/gallery/share/Path;->mIsOtherShared:Z

    .line 25
    return-void
.end method

.method public constructor <init>(JZZ)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "isOtherShare"    # Z
    .param p4, "isBabyAlbum"    # Z

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide p1, p0, Lcom/miui/gallery/share/Path;->mId:J

    .line 29
    iput-boolean p3, p0, Lcom/miui/gallery/share/Path;->mIsOtherShared:Z

    .line 30
    iput-boolean p4, p0, Lcom/miui/gallery/share/Path;->mIsBabyAlbum:Z

    .line 31
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gallery/share/Path;->mIsOtherShared:Z

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/miui/gallery/share/Path;->mIsBabyAlbum:Z

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/share/Path;->mId:J

    .line 37
    return-void

    :cond_0
    move v0, v2

    .line 34
    goto :goto_0

    :cond_1
    move v1, v2

    .line 35
    goto :goto_1
.end method

.method public static fromString(Ljava/lang/String;)Lcom/miui/gallery/share/Path;
    .locals 4
    .param p0, "pathStr"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 69
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 70
    :cond_0
    const/4 v0, 0x0

    .line 79
    :goto_0
    return-object v0

    .line 73
    :cond_1
    new-instance v0, Lcom/miui/gallery/share/Path;

    invoke-direct {v0}, Lcom/miui/gallery/share/Path;-><init>()V

    .line 74
    .local v0, "aPath":Lcom/miui/gallery/share/Path;
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 76
    .local v1, "index":I
    const-string v2, "other"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_2

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, v0, Lcom/miui/gallery/share/Path;->mIsOtherShared:Z

    .line 77
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/gallery/share/Path;->mId:J

    goto :goto_0

    .line 76
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/miui/gallery/share/Path;->mId:J

    return-wide v0
.end method

.method public getMediaSet()Lcom/miui/gallery/share/CloudSharerMediaSet;
    .locals 2

    .prologue
    .line 95
    sget-object v1, Lcom/miui/gallery/share/Path;->sSetCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    sget-object v1, Lcom/miui/gallery/share/Path;->sSetCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/share/CloudSharerMediaSet;

    .line 100
    :goto_0
    return-object v1

    .line 98
    :cond_0
    new-instance v0, Lcom/miui/gallery/share/CloudSharerMediaSet;

    invoke-direct {v0, p0}, Lcom/miui/gallery/share/CloudSharerMediaSet;-><init>(Lcom/miui/gallery/share/Path;)V

    .line 99
    .local v0, "set":Lcom/miui/gallery/share/CloudSharerMediaSet;
    sget-object v1, Lcom/miui/gallery/share/Path;->sSetCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 100
    goto :goto_0
.end method

.method public isBabyAlbum()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/miui/gallery/share/Path;->mIsBabyAlbum:Z

    return v0
.end method

.method public isOtherShared()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/miui/gallery/share/Path;->mIsOtherShared:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/miui/gallery/share/Path;->mIsOtherShared:Z

    if-eqz v1, :cond_0

    const-string v1, "other"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/miui/gallery/share/Path;->mId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "re":Ljava/lang/String;
    return-object v0

    .line 64
    .end local v0    # "re":Ljava/lang/String;
    :cond_0
    const-string v1, "owner"

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 58
    iget-boolean v0, p0, Lcom/miui/gallery/share/Path;->mIsOtherShared:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 59
    iget-boolean v0, p0, Lcom/miui/gallery/share/Path;->mIsBabyAlbum:Z

    if-eqz v0, :cond_1

    :goto_1
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 60
    iget-wide v0, p0, Lcom/miui/gallery/share/Path;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 61
    return-void

    :cond_0
    move v0, v2

    .line 58
    goto :goto_0

    :cond_1
    move v1, v2

    .line 59
    goto :goto_1
.end method
