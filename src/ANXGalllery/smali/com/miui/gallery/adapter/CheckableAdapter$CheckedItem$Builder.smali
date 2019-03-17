.class public Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;
.super Ljava/lang/Object;
.source "CheckableAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Builder"
.end annotation


# instance fields
.field private mId:J

.field private mMicroThumbnailFile:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;

.field private mOriginFile:Ljava/lang/String;

.field private mSha1:Ljava/lang/String;

.field private mThumbnailFile:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;->mId:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;->mSha1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;->mMicroThumbnailFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;->mThumbnailFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;->mOriginFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;->mMimeType:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method build()Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;-><init>(Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;Lcom/miui/gallery/adapter/CheckableAdapter$1;)V

    return-object v0
.end method

.method setId(J)Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;->mId:J

    .line 47
    return-object p0
.end method

.method setMicroThumbnailFile(Ljava/lang/String;)Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;
    .locals 0
    .param p1, "microThumbnailFile"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;->mMicroThumbnailFile:Ljava/lang/String;

    .line 57
    return-object p0
.end method

.method setMimeType(Ljava/lang/String;)Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;->mMimeType:Ljava/lang/String;

    .line 72
    return-object p0
.end method

.method setOriginFile(Ljava/lang/String;)Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;
    .locals 0
    .param p1, "originFile"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;->mOriginFile:Ljava/lang/String;

    .line 67
    return-object p0
.end method

.method setSha1(Ljava/lang/String;)Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;
    .locals 0
    .param p1, "sha1"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;->mSha1:Ljava/lang/String;

    .line 52
    return-object p0
.end method

.method setThumbnailFile(Ljava/lang/String;)Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;
    .locals 0
    .param p1, "thumbnailFile"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;->mThumbnailFile:Ljava/lang/String;

    .line 62
    return-object p0
.end method
