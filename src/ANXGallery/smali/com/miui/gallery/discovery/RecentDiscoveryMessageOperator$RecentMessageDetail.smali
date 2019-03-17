.class public Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentMessageDetail;
.super Lcom/miui/gallery/model/DiscoveryMessage$BaseMessageDetail;
.source "RecentDiscoveryMessageOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecentMessageDetail"
.end annotation


# instance fields
.field private thumbUrls:[Ljava/lang/String;

.field private unviewMediaCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/miui/gallery/model/DiscoveryMessage$BaseMessageDetail;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentMessageDetail;
    .locals 4
    .param p0, "extraDataJson"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 169
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator;->access$000()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v3, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentMessageDetail;

    invoke-virtual {v1, p0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentMessageDetail;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    return-object v1

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RecentDiscoveryMessageOperator"

    const-string v3, "Unable to parse extraData json to object: %s"

    invoke-static {v1, v3, p0}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    .line 175
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v1, v2

    .line 178
    goto :goto_0
.end method


# virtual methods
.method public getThumbUrls()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentMessageDetail;->thumbUrls:[Ljava/lang/String;

    return-object v0
.end method

.method public getUnviewMediaCount()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentMessageDetail;->unviewMediaCount:I

    return v0
.end method

.method public setThumbUrls([Ljava/lang/String;)V
    .locals 0
    .param p1, "thumbUrls"    # [Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentMessageDetail;->thumbUrls:[Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setUnviewMediaCount(I)V
    .locals 0
    .param p1, "unviewMediaCount"    # I

    .prologue
    .line 157
    iput p1, p0, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentMessageDetail;->unviewMediaCount:I

    .line 158
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    invoke-static {}, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator;->access$000()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
