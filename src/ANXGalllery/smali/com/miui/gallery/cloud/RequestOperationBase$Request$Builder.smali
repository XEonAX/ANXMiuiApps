.class public final Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;
.super Ljava/lang/Object;
.source "RequestOperationBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/RequestOperationBase$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mMethod:I

.field private mNeedReRequest:Z

.field private mParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private mPostData:Lorg/json/JSONObject;

.field private mRetryTimes:I

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->mNeedReRequest:Z

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    .prologue
    .line 164
    iget v0, p0, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->mMethod:I

    return v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->mParams:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->mPostData:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    .prologue
    .line 164
    iget v0, p0, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->mRetryTimes:I

    return v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->mNeedReRequest:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/miui/gallery/cloud/RequestOperationBase$Request;
    .locals 2

    .prologue
    .line 203
    new-instance v0, Lcom/miui/gallery/cloud/RequestOperationBase$Request;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/cloud/RequestOperationBase$Request;-><init>(Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;Lcom/miui/gallery/cloud/RequestOperationBase$1;)V

    return-object v0
.end method

.method public setMethod(I)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;
    .locals 0
    .param p1, "method"    # I

    .prologue
    .line 173
    iput p1, p0, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->mMethod:I

    .line 174
    return-object p0
.end method

.method public setNeedReRequest(Z)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;
    .locals 0
    .param p1, "needReRequest"    # Z

    .prologue
    .line 198
    iput-boolean p1, p0, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->mNeedReRequest:Z

    .line 199
    return-object p0
.end method

.method public setParams(Ljava/util/List;)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    iput-object p1, p0, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->mParams:Ljava/util/List;

    .line 184
    return-object p0
.end method

.method public setPostData(Lorg/json/JSONObject;)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;
    .locals 0
    .param p1, "postData"    # Lorg/json/JSONObject;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->mPostData:Lorg/json/JSONObject;

    .line 189
    return-object p0
.end method

.method public setRetryTimes(I)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;
    .locals 0
    .param p1, "retryTimes"    # I

    .prologue
    .line 193
    iput p1, p0, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->mRetryTimes:I

    .line 194
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->mUrl:Ljava/lang/String;

    .line 179
    return-object p0
.end method
