.class public Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$ResponseResult;
.super Ljava/lang/Object;
.source "ServerSearchRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResponseResult"
.end annotation


# instance fields
.field private mData:Ljava/lang/Object;

.field private mDataType:Ljava/lang/reflect/Type;

.field private mRawData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 0
    .param p1, "dataType"    # Ljava/lang/reflect/Type;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$ResponseResult;->mDataType:Ljava/lang/reflect/Type;

    .line 111
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$ResponseResult;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public getRawData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$ResponseResult;->mRawData:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 2
    .param p1, "jsonData"    # Ljava/lang/String;

    .prologue
    .line 119
    iget-object v1, p0, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$ResponseResult;->mDataType:Ljava/lang/reflect/Type;

    if-eqz v1, :cond_0

    .line 120
    invoke-static {}, Lcom/miui/gallery/search/core/source/server/HttpUtils;->createGson()Lcom/google/gson/Gson;

    move-result-object v0

    .line 121
    .local v0, "gson":Lcom/google/gson/Gson;
    iget-object v1, p0, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$ResponseResult;->mDataType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$ResponseResult;->mData:Ljava/lang/Object;

    .line 125
    .end local v0    # "gson":Lcom/google/gson/Gson;
    :goto_0
    iput-object p1, p0, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$ResponseResult;->mRawData:Ljava/lang/String;

    .line 126
    return-void

    .line 123
    :cond_0
    iput-object p1, p0, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$ResponseResult;->mData:Ljava/lang/Object;

    goto :goto_0
.end method
