.class Lcom/miui/gallery/cloud/SyncOwnerCloud$1;
.super Ljava/lang/Object;
.source "SyncOwnerCloud.java"

# interfaces
.implements Lcom/miui/gallery/util/GalleryUtils$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/cloud/SyncOwnerCloud;->handleFavoriteInfo(Lorg/json/JSONObject;Ljava/lang/String;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/cloud/SyncOwnerCloud;


# direct methods
.method constructor <init>(Lcom/miui/gallery/cloud/SyncOwnerCloud;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/cloud/SyncOwnerCloud;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/miui/gallery/cloud/SyncOwnerCloud$1;->this$0:Lcom/miui/gallery/cloud/SyncOwnerCloud;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/database/Cursor;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 106
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/miui/gallery/cloud/SyncOwnerCloud$1;->handle(Landroid/database/Cursor;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
