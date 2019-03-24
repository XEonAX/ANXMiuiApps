.class public Lmiui/yellowpage/YellowPage$Provider;
.super Ljava/lang/Object;
.source "YellowPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/yellowpage/YellowPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Provider"
.end annotation


# instance fields
.field private mId:I

.field private mSourceUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lmiui/yellowpage/YellowPage$Provider;
    .locals 3
    .param p0, "json"    # Lorg/json/JSONObject;

    .line 89
    :try_start_0
    const-string v0, "provider"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 90
    .local v0, "id":I
    const-string v1, "sourceUrl"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Lmiui/yellowpage/YellowPage$Provider;

    invoke-direct {v2}, Lmiui/yellowpage/YellowPage$Provider;-><init>()V

    invoke-virtual {v2, v0}, Lmiui/yellowpage/YellowPage$Provider;->setId(I)Lmiui/yellowpage/YellowPage$Provider;

    move-result-object v2

    invoke-virtual {v2, v1}, Lmiui/yellowpage/YellowPage$Provider;->setSourceUrl(Ljava/lang/String;)Lmiui/yellowpage/YellowPage$Provider;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 92
    .end local v0    # "id":I
    .end local v1    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 95
    .end local v0    # "e":Lorg/json/JSONException;
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 75
    iget v0, p0, Lmiui/yellowpage/YellowPage$Provider;->mId:I

    return v0
.end method

.method public getSourceUrl()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lmiui/yellowpage/YellowPage$Provider;->mSourceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)Lmiui/yellowpage/YellowPage$Provider;
    .locals 0
    .param p1, "id"    # I

    .line 70
    iput p1, p0, Lmiui/yellowpage/YellowPage$Provider;->mId:I

    .line 71
    return-object p0
.end method

.method public setSourceUrl(Ljava/lang/String;)Lmiui/yellowpage/YellowPage$Provider;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 79
    iput-object p1, p0, Lmiui/yellowpage/YellowPage$Provider;->mSourceUrl:Ljava/lang/String;

    .line 80
    return-object p0
.end method
