.class Lcom/miui/gallery/util/baby/BabyFaceFinder$1;
.super Ljava/lang/Object;
.source "BabyFaceFinder.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/baby/BabyFaceFinder;->startFindFace(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/ThreadPool$Job",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/util/baby/BabyFaceFinder;


# direct methods
.method constructor <init>(Lcom/miui/gallery/util/baby/BabyFaceFinder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/util/baby/BabyFaceFinder;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/miui/gallery/util/baby/BabyFaceFinder$1;->this$0:Lcom/miui/gallery/util/baby/BabyFaceFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Boolean;
    .locals 7
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 54
    const/4 v6, 0x0

    .line 57
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->PERSONS_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/gallery/util/face/PeopleCursorHelper;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 59
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 63
    :cond_0
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    iget-object v0, p0, Lcom/miui/gallery/util/baby/BabyFaceFinder$1;->this$0:Lcom/miui/gallery/util/baby/BabyFaceFinder;

    invoke-static {v6}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getPeopleName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-static {v6}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getRelationType(Landroid/database/Cursor;)I

    move-result v2

    .line 64
    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/baby/BabyFaceFinder;->access$000(Lcom/miui/gallery/util/baby/BabyFaceFinder;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 71
    if-eqz v6, :cond_1

    .line 72
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 76
    :cond_1
    :goto_0
    return-object v0

    .line 71
    :cond_2
    if-eqz v6, :cond_3

    .line 72
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 76
    :cond_3
    :goto_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 71
    if-eqz v6, :cond_3

    .line 72
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 71
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 72
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/baby/BabyFaceFinder$1;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
