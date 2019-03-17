.class Lcom/miui/gallery/provider/GalleryDBHelper$2;
.super Ljava/lang/Object;
.source "GalleryDBHelper.java"

# interfaces
.implements Lcom/miui/gallery/cloud/CloudUtils$Insertable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/provider/GalleryDBHelper;->addRecordsForCameraAndScreenshots(Landroid/database/sqlite/SQLiteDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/provider/GalleryDBHelper;

.field final synthetic val$db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method constructor <init>(Lcom/miui/gallery/provider/GalleryDBHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/provider/GalleryDBHelper;

    .prologue
    .line 2547
    iput-object p1, p0, Lcom/miui/gallery/provider/GalleryDBHelper$2;->this$0:Lcom/miui/gallery/provider/GalleryDBHelper;

    iput-object p2, p0, Lcom/miui/gallery/provider/GalleryDBHelper$2;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public insert(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "nullColumnHack"    # Ljava/lang/String;
    .param p4, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 2551
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper$2;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method
