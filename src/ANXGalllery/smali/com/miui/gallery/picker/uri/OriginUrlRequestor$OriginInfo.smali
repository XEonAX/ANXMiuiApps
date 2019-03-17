.class public Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;
.super Ljava/lang/Object;
.source "OriginUrlRequestor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/picker/uri/OriginUrlRequestor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OriginInfo"
.end annotation


# static fields
.field private static FILE_SHA1:Ljava/lang/String;

.field private static FILE_URI:Ljava/lang/String;

.field private static ORIGIN_DOWNLOAD_INFO:Ljava/lang/String;

.field private static ORIGIN_HEIGHT:Ljava/lang/String;

.field private static ORIGIN_WIDTH:Ljava/lang/String;


# instance fields
.field private mFileUri:Landroid/net/Uri;

.field private mHeight:I

.field private mOriginDownloadInfo:Lorg/json/JSONObject;

.field private mSha1:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 158
    const-string v0, "file_uri"

    sput-object v0, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;->FILE_URI:Ljava/lang/String;

    .line 159
    const-string/jumbo v0, "sha1"

    sput-object v0, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;->FILE_SHA1:Ljava/lang/String;

    .line 160
    const-string v0, "origin_download_info"

    sput-object v0, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;->ORIGIN_DOWNLOAD_INFO:Ljava/lang/String;

    .line 161
    const-string v0, "origin_height"

    sput-object v0, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;->ORIGIN_HEIGHT:Ljava/lang/String;

    .line 162
    const-string v0, "origin_width"

    sput-object v0, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;->ORIGIN_WIDTH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .param p1, "fileUri"    # Landroid/net/Uri;
    .param p2, "sha1"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p1, p0, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;->mFileUri:Landroid/net/Uri;

    .line 172
    iput-object p2, p0, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;->mSha1:Ljava/lang/String;

    .line 173
    return-void
.end method


# virtual methods
.method public setOriginDownloadInfo(Lorg/json/JSONObject;II)V
    .locals 0
    .param p1, "downloadInfo"    # Lorg/json/JSONObject;
    .param p2, "height"    # I
    .param p3, "width"    # I

    .prologue
    .line 176
    iput-object p1, p0, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;->mOriginDownloadInfo:Lorg/json/JSONObject;

    .line 177
    iput p2, p0, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;->mHeight:I

    .line 178
    iput p3, p0, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;->mWidth:I

    .line 179
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 4

    .prologue
    .line 182
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 184
    .local v1, "originInfoJson":Lorg/json/JSONObject;
    :try_start_0
    sget-object v2, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;->FILE_URI:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;->mFileUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    sget-object v2, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;->FILE_SHA1:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;->mSha1:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    iget-object v2, p0, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;->mOriginDownloadInfo:Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    .line 187
    sget-object v2, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;->ORIGIN_DOWNLOAD_INFO:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;->mOriginDownloadInfo:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    sget-object v2, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;->ORIGIN_HEIGHT:Ljava/lang/String;

    iget v3, p0, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;->mHeight:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 189
    sget-object v2, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;->ORIGIN_WIDTH:Ljava/lang/String;

    iget v3, p0, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;->mWidth:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 191
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 194
    :goto_0
    return-object v2

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "OriginUrlRequestor"

    const-string v3, "originInfo to json error"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const/4 v2, 0x0

    goto :goto_0
.end method
