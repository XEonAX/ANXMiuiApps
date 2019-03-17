.class public Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;
.super Ljava/lang/Object;
.source "CheckableAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/adapter/CheckableAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckedItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;
    }
.end annotation


# instance fields
.field private mHeight:I

.field private final mId:J

.field private final mMicroThumbnailFile:Ljava/lang/String;

.field private final mMimeType:Ljava/lang/String;

.field private final mOriginFile:Ljava/lang/String;

.field private mServerType:I

.field private final mSha1:Ljava/lang/String;

.field private mSize:J

.field private final mThumbnailFile:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method private constructor <init>(Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;)V
    .locals 2
    .param p1, "build"    # Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p1}, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;->access$000(Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;->mId:J

    .line 29
    invoke-static {p1}, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;->access$100(Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;->mSha1:Ljava/lang/String;

    .line 30
    invoke-static {p1}, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;->access$200(Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;->mMicroThumbnailFile:Ljava/lang/String;

    .line 31
    invoke-static {p1}, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;->access$300(Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;->mThumbnailFile:Ljava/lang/String;

    .line 32
    invoke-static {p1}, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;->access$400(Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;->mOriginFile:Ljava/lang/String;

    .line 33
    invoke-static {p1}, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;->access$500(Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;->mMimeType:Ljava/lang/String;

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;Lcom/miui/gallery/adapter/CheckableAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;
    .param p2, "x1"    # Lcom/miui/gallery/adapter/CheckableAdapter$1;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;-><init>(Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;)V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;->mHeight:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;->mId:J

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;->mOriginFile:Ljava/lang/String;

    return-object v0
.end method

.method public getServerType()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;->mServerType:I

    return v0
.end method

.method public getSha1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;->mSha1:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;->mSize:J

    return-wide v0
.end method

.method public getThumbnailFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;->mThumbnailFile:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;->mWidth:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;->mHeight:I

    .line 118
    return-void
.end method

.method public setServerType(I)V
    .locals 0
    .param p1, "serverType"    # I

    .prologue
    .line 133
    iput p1, p0, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;->mServerType:I

    .line 134
    return-void
.end method

.method public setSize(J)V
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 109
    iput-wide p1, p0, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;->mSize:J

    .line 110
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;->mWidth:I

    .line 126
    return-void
.end method
