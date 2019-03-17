.class Lmiui/module/appstore/Metadata;
.super Ljava/lang/Object;
.source "Metadata.java"


# instance fields
.field public mFileHash:Ljava/lang/String;

.field public mHost:Ljava/lang/String;

.field public mResourceId:Ljava/lang/String;

.field public mUrl:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Lorg/json/JSONObject;)Lmiui/module/appstore/Metadata;
    .locals 3
    .param p0, "rootObject"    # Lorg/json/JSONObject;

    .prologue
    .line 23
    new-instance v0, Lmiui/module/appstore/Metadata;

    invoke-direct {v0}, Lmiui/module/appstore/Metadata;-><init>()V

    .line 25
    .local v0, "data":Lmiui/module/appstore/Metadata;
    :try_start_0
    const-string v2, "resourceId"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmiui/module/appstore/Metadata;->mResourceId:Ljava/lang/String;

    .line 26
    const-string v2, "host"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmiui/module/appstore/Metadata;->mHost:Ljava/lang/String;

    .line 27
    const-string/jumbo v2, "url"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmiui/module/appstore/Metadata;->mUrl:Ljava/lang/String;

    .line 28
    const-string v2, "fileHash"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmiui/module/appstore/Metadata;->mFileHash:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .end local v0    # "data":Lmiui/module/appstore/Metadata;
    :goto_0
    return-object v0

    .line 29
    .restart local v0    # "data":Lmiui/module/appstore/Metadata;
    :catch_0
    move-exception v1

    .line 30
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 31
    const/4 v0, 0x0

    goto :goto_0
.end method
