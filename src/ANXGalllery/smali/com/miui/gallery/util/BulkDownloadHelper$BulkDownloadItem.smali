.class public Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;
.super Ljava/lang/Object;
.source "BulkDownloadHelper.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/BulkDownloadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BulkDownloadItem"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDownloadPath:Ljava/lang/String;

.field private mDownloadUri:Landroid/net/Uri;

.field private mSize:J

.field private mType:Lcom/miui/gallery/sdk/download/DownloadType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 193
    new-instance v0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem$1;

    invoke-direct {v0}, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;J)V
    .locals 1
    .param p1, "downloadUri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "size"    # J

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->mDownloadUri:Landroid/net/Uri;

    .line 151
    iput-object p2, p0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->mType:Lcom/miui/gallery/sdk/download/DownloadType;

    .line 152
    iput-wide p3, p0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->mSize:J

    .line 153
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->mDownloadUri:Landroid/net/Uri;

    .line 157
    const-class v0, Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/sdk/download/DownloadType;

    iput-object v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->mType:Lcom/miui/gallery/sdk/download/DownloadType;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->mSize:J

    .line 159
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public getDownloadPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->mDownloadPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->mDownloadUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 174
    iget-wide v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->mSize:J

    return-wide v0
.end method

.method public getType()Lcom/miui/gallery/sdk/download/DownloadType;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->mType:Lcom/miui/gallery/sdk/download/DownloadType;

    return-object v0
.end method

.method setDownloadPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->mDownloadPath:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 207
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Uri[%s], ImageType[%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->mDownloadUri:Landroid/net/Uri;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->mType:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-virtual {v4}, Lcom/miui/gallery/sdk/download/DownloadType;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 188
    iget-object v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->mDownloadUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 189
    iget-object v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->mType:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 190
    iget-wide v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->mSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 191
    return-void
.end method
