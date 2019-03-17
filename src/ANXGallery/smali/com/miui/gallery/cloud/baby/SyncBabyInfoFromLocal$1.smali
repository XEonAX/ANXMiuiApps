.class Lcom/miui/gallery/cloud/baby/SyncBabyInfoFromLocal$1;
.super Ljava/lang/Object;
.source "SyncBabyInfoFromLocal.java"

# interfaces
.implements Lcom/miui/gallery/util/GalleryUtils$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/cloud/baby/SyncBabyInfoFromLocal;->sync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/GalleryUtils$QueryHandler",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/cloud/baby/SyncBabyInfoFromLocal;


# direct methods
.method constructor <init>(Lcom/miui/gallery/cloud/baby/SyncBabyInfoFromLocal;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/cloud/baby/SyncBabyInfoFromLocal;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/miui/gallery/cloud/baby/SyncBabyInfoFromLocal$1;->this$0:Lcom/miui/gallery/cloud/baby/SyncBabyInfoFromLocal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/miui/gallery/cloud/baby/SyncBabyInfoFromLocal$1;->handle(Landroid/database/Cursor;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public handle(Landroid/database/Cursor;)Ljava/lang/Void;
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 60
    if-eqz p1, :cond_1

    .line 61
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 62
    iget-object v4, p0, Lcom/miui/gallery/cloud/baby/SyncBabyInfoFromLocal$1;->this$0:Lcom/miui/gallery/cloud/baby/SyncBabyInfoFromLocal;

    invoke-virtual {v4, p1}, Lcom/miui/gallery/cloud/baby/SyncBabyInfoFromLocal;->generateDBImage(Landroid/database/Cursor;)Lcom/miui/gallery/data/DBImage;

    move-result-object v1

    .line 63
    .local v1, "cloud":Lcom/miui/gallery/data/DBImage;
    invoke-virtual {v1}, Lcom/miui/gallery/data/DBImage;->getBabyInfoJson()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "babyInfoJson":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 66
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 68
    .local v2, "json":Lorg/json/JSONObject;
    const-string v4, "localFlag"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "localFlag"

    .line 69
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 70
    new-instance v3, Lcom/miui/gallery/cloud/RequestCloudItem;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;)V

    .line 73
    .local v3, "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    iget-object v4, p0, Lcom/miui/gallery/cloud/baby/SyncBabyInfoFromLocal$1;->this$0:Lcom/miui/gallery/cloud/baby/SyncBabyInfoFromLocal;

    invoke-static {v4}, Lcom/miui/gallery/cloud/baby/SyncBabyInfoFromLocal;->access$000(Lcom/miui/gallery/cloud/baby/SyncBabyInfoFromLocal;)Ljava/util/ArrayList;

    move-result-object v4

    .line 74
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 83
    .end local v0    # "babyInfoJson":Ljava/lang/String;
    .end local v1    # "cloud":Lcom/miui/gallery/data/DBImage;
    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method
