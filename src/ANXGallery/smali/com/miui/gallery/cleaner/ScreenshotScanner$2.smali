.class Lcom/miui/gallery/cleaner/ScreenshotScanner$2;
.super Ljava/lang/Object;
.source "ScreenshotScanner.java"

# interfaces
.implements Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/cleaner/ScreenshotScanner;->queryScreenshotAlbumId(Landroid/content/Context;)I
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/cleaner/ScreenshotScanner;


# direct methods
.method constructor <init>(Lcom/miui/gallery/cleaner/ScreenshotScanner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/cleaner/ScreenshotScanner;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/miui/gallery/cleaner/ScreenshotScanner$2;->this$0:Lcom/miui/gallery/cleaner/ScreenshotScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/database/Cursor;)Ljava/lang/Integer;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 121
    const/4 v0, -0x1

    .line 122
    .local v0, "albumId":I
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 128
    :cond_0
    if-lez v0, :cond_1

    .end local v0    # "albumId":I
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .restart local v0    # "albumId":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lcom/miui/gallery/cleaner/ScreenshotScanner$2;->handle(Landroid/database/Cursor;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
