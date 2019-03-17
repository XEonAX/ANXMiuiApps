.class Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity$4;
.super Ljava/lang/Object;
.source "SharerBabyAlbumSettingActivity.java"

# interfaces
.implements Lcom/miui/gallery/util/GalleryUtils$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->getSelfRelationText()Ljava/lang/String;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;


# direct methods
.method constructor <init>(Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity$4;->this$0:Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0, p1}, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity$4;->handle(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handle(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 209
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 212
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
