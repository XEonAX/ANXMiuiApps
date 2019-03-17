.class public final Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;
.super Ljava/lang/Object;
.source "AlbumShareOperations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/share/AlbumShareOperations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutgoingInvitation"
.end annotation


# instance fields
.field private final mDescription:Ljava/lang/String;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;->mDescription:Ljava/lang/String;

    .line 106
    iput-object p2, p0, Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;->mUrl:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public static fromCache(Ljava/lang/String;)Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;
    .locals 4
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 135
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, "data":Lorg/json/JSONObject;
    new-instance v1, Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;

    const-string/jumbo v2, "text"

    .line 137
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "url"

    .line 138
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v0    # "data":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 139
    :catch_0
    move-exception v1

    .line 142
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public toCache()Ljava/lang/String;
    .locals 3

    .prologue
    .line 122
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 124
    .local v0, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v1, "text"

    iget-object v2, p0, Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    const-string/jumbo v1, "url"

    iget-object v2, p0, Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 130
    :goto_0
    return-object v1

    .line 127
    :catch_0
    move-exception v1

    .line 130
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
