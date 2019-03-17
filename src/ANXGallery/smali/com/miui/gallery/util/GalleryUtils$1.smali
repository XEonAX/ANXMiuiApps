.class final Lcom/miui/gallery/util/GalleryUtils$1;
.super Landroid/database/CursorWrapper;
.source "GalleryUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/GalleryUtils;->queryToCursor(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$constClient:Landroid/content/ContentProviderClient;


# direct methods
.method constructor <init>(Landroid/database/Cursor;Landroid/content/ContentProviderClient;)V
    .locals 0
    .param p1, "x0"    # Landroid/database/Cursor;

    .prologue
    .line 281
    iput-object p2, p0, Lcom/miui/gallery/util/GalleryUtils$1;->val$constClient:Landroid/content/ContentProviderClient;

    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 284
    invoke-super {p0}, Landroid/database/CursorWrapper;->close()V

    .line 286
    iget-object v0, p0, Lcom/miui/gallery/util/GalleryUtils$1;->val$constClient:Landroid/content/ContentProviderClient;

    invoke-static {v0}, Lcom/miui/gallery/util/GalleryUtils;->access$000(Landroid/content/ContentProviderClient;)V

    .line 287
    return-void
.end method
