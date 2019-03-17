.class Lcom/miui/gallery/cloud/SyncOwnerAlbum$2;
.super Ljava/lang/Object;
.source "SyncOwnerAlbum.java"

# interfaces
.implements Lcom/miui/gallery/cloud/CloudUtils$Insertable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/cloud/SyncOwnerAlbum;->handleResultAndShouldContinue(Lorg/json/JSONObject;Ljava/util/ArrayList;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/cloud/SyncOwnerAlbum;


# direct methods
.method constructor <init>(Lcom/miui/gallery/cloud/SyncOwnerAlbum;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/cloud/SyncOwnerAlbum;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/miui/gallery/cloud/SyncOwnerAlbum$2;->this$0:Lcom/miui/gallery/cloud/SyncOwnerAlbum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public insert(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "nullColumnHack"    # Ljava/lang/String;
    .param p4, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 136
    invoke-static {p1, p4}, Lcom/miui/gallery/util/GalleryUtils;->safeInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 137
    .local v0, "rowUri":Landroid/net/Uri;
    if-nez v0, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x1

    goto :goto_0
.end method
