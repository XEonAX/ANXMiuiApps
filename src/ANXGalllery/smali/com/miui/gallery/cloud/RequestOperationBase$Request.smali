.class public final Lcom/miui/gallery/cloud/RequestOperationBase$Request;
.super Ljava/lang/Object;
.source "RequestOperationBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/RequestOperationBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;
    }
.end annotation


# instance fields
.field private final mMethod:I

.field private final mNeedReRequest:Z

.field private final mParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private final mPostData:Lorg/json/JSONObject;

.field private final mRetryTimes:I

.field private final mUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    invoke-static {p1}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->access$100(Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/cloud/RequestOperationBase$Request;->mMethod:I

    .line 124
    invoke-static {p1}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->access$200(Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/RequestOperationBase$Request;->mUrl:Ljava/lang/String;

    .line 125
    invoke-static {p1}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->access$300(Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/RequestOperationBase$Request;->mParams:Ljava/util/List;

    .line 126
    invoke-static {p1}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->access$400(Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/RequestOperationBase$Request;->mPostData:Lorg/json/JSONObject;

    .line 127
    invoke-static {p1}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->access$500(Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/cloud/RequestOperationBase$Request;->mRetryTimes:I

    .line 128
    invoke-static {p1}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->access$600(Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/cloud/RequestOperationBase$Request;->mNeedReRequest:Z

    .line 129
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;Lcom/miui/gallery/cloud/RequestOperationBase$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;
    .param p2, "x1"    # Lcom/miui/gallery/cloud/RequestOperationBase$1;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/RequestOperationBase$Request;-><init>(Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/cloud/RequestOperationBase$Request;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cloud/RequestOperationBase$Request;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/miui/gallery/cloud/RequestOperationBase$Request;->isValid()Z

    move-result v0

    return v0
.end method

.method private isValid()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 156
    iget v1, p0, Lcom/miui/gallery/cloud/RequestOperationBase$Request;->mMethod:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/miui/gallery/cloud/RequestOperationBase$Request;->mMethod:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/cloud/RequestOperationBase$Request;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getMethod()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/miui/gallery/cloud/RequestOperationBase$Request;->mMethod:I

    return v0
.end method

.method public getParams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/miui/gallery/cloud/RequestOperationBase$Request;->mParams:Ljava/util/List;

    return-object v0
.end method

.method public getPostData()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/miui/gallery/cloud/RequestOperationBase$Request;->mPostData:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getRetryTimes()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/miui/gallery/cloud/RequestOperationBase$Request;->mRetryTimes:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/miui/gallery/cloud/RequestOperationBase$Request;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isNeedReRequest()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/miui/gallery/cloud/RequestOperationBase$Request;->mNeedReRequest:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 161
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "mMethod %s, mUrl %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/miui/gallery/cloud/RequestOperationBase$Request;->mMethod:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/miui/gallery/cloud/RequestOperationBase$Request;->mUrl:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
