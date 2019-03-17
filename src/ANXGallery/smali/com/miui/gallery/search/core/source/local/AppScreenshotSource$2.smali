.class Lcom/miui/gallery/search/core/source/local/AppScreenshotSource$2;
.super Ljava/lang/Object;
.source "AppScreenshotSource.java"

# interfaces
.implements Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/search/core/source/local/AppScreenshotSource;->getScreenshotAlbumId()Ljava/lang/Long;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/SafeDBUtil$QueryHandler",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/core/source/local/AppScreenshotSource;


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/core/source/local/AppScreenshotSource;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/search/core/source/local/AppScreenshotSource;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/miui/gallery/search/core/source/local/AppScreenshotSource$2;->this$0:Lcom/miui/gallery/search/core/source/local/AppScreenshotSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/database/Cursor;)Ljava/lang/Long;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 122
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/core/source/local/AppScreenshotSource$2;->handle(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
