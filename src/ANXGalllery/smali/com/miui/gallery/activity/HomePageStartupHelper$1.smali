.class Lcom/miui/gallery/activity/HomePageStartupHelper$1;
.super Ljava/lang/Object;
.source "HomePageStartupHelper.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/activity/HomePageStartupHelper;->loadHomePageData()Lcom/miui/gallery/threadpool/Future;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/activity/HomePageStartupHelper;


# direct methods
.method constructor <init>(Lcom/miui/gallery/activity/HomePageStartupHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/activity/HomePageStartupHelper;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/miui/gallery/activity/HomePageStartupHelper$1;->this$0:Lcom/miui/gallery/activity/HomePageStartupHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/miui/gallery/activity/HomePageStartupHelper$1;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 14
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 57
    :try_start_0
    iget-object v13, p0, Lcom/miui/gallery/activity/HomePageStartupHelper$1;->this$0:Lcom/miui/gallery/activity/HomePageStartupHelper;

    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageStartupHelper$1;->this$0:Lcom/miui/gallery/activity/HomePageStartupHelper;

    invoke-static {v0}, Lcom/miui/gallery/activity/HomePageStartupHelper;->access$100(Lcom/miui/gallery/activity/HomePageStartupHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/ui/HomePageFragment;->PHOTOS_LOADER_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/gallery/ui/HomePageFragment;->PHOTOS_LOADER_PROJECTION:[Ljava/lang/String;

    const-string v3, "alias_show_in_homepage=1 AND sha1 NOT NULL"

    const/4 v4, 0x0

    const-string v5, "alias_sort_time DESC "

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/miui/gallery/activity/HomePageStartupHelper;->access$002(Lcom/miui/gallery/activity/HomePageStartupHelper;Landroid/database/Cursor;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageStartupHelper$1;->this$0:Lcom/miui/gallery/activity/HomePageStartupHelper;

    invoke-static {v0}, Lcom/miui/gallery/activity/HomePageStartupHelper;->access$300(Lcom/miui/gallery/activity/HomePageStartupHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageStartupHelper$1;->this$0:Lcom/miui/gallery/activity/HomePageStartupHelper;

    invoke-static {v0}, Lcom/miui/gallery/activity/HomePageStartupHelper;->access$400(Lcom/miui/gallery/activity/HomePageStartupHelper;)V

    .line 67
    const/4 v0, 0x0

    .line 107
    :goto_1
    return-object v0

    .line 62
    :catch_0
    move-exception v10

    .line 63
    .local v10, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/miui/gallery/activity/HomePageStartupHelper;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error when load data in home page "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v8, 0x0

    .line 71
    .local v8, "countInGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageStartupHelper$1;->this$0:Lcom/miui/gallery/activity/HomePageStartupHelper;

    invoke-static {v0}, Lcom/miui/gallery/activity/HomePageStartupHelper;->access$500(Lcom/miui/gallery/activity/HomePageStartupHelper;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 72
    :try_start_1
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageStartupHelper$1;->this$0:Lcom/miui/gallery/activity/HomePageStartupHelper;

    invoke-static {v0}, Lcom/miui/gallery/activity/HomePageStartupHelper;->access$000(Lcom/miui/gallery/activity/HomePageStartupHelper;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageStartupHelper$1;->this$0:Lcom/miui/gallery/activity/HomePageStartupHelper;

    invoke-static {v0}, Lcom/miui/gallery/activity/HomePageStartupHelper;->access$000(Lcom/miui/gallery/activity/HomePageStartupHelper;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageStartupHelper$1;->this$0:Lcom/miui/gallery/activity/HomePageStartupHelper;

    invoke-static {v0}, Lcom/miui/gallery/activity/HomePageStartupHelper;->access$000(Lcom/miui/gallery/activity/HomePageStartupHelper;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "extra_timeline_item_count_in_group"

    .line 74
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 75
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageStartupHelper$1;->this$0:Lcom/miui/gallery/activity/HomePageStartupHelper;

    invoke-static {v0, v8}, Lcom/miui/gallery/activity/HomePageStartupHelper;->access$600(Lcom/miui/gallery/activity/HomePageStartupHelper;Ljava/util/ArrayList;)I

    move-result v12

    .line 78
    .local v12, "preLoadImageCount":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v9, "displayItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/activity/HomePageStartupHelper$ImageDisplayItem;>;"
    const/4 v6, 0x0

    .local v6, "count":I
    move v7, v6

    .line 81
    .end local v6    # "count":I
    .local v7, "count":I
    :goto_2
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "count":I
    .restart local v6    # "count":I
    if-ge v7, v12, :cond_3

    .line 82
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageStartupHelper$1;->this$0:Lcom/miui/gallery/activity/HomePageStartupHelper;

    invoke-static {v0}, Lcom/miui/gallery/activity/HomePageStartupHelper;->access$500(Lcom/miui/gallery/activity/HomePageStartupHelper;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 83
    :try_start_2
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageStartupHelper$1;->this$0:Lcom/miui/gallery/activity/HomePageStartupHelper;

    invoke-static {v0}, Lcom/miui/gallery/activity/HomePageStartupHelper;->access$000(Lcom/miui/gallery/activity/HomePageStartupHelper;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageStartupHelper$1;->this$0:Lcom/miui/gallery/activity/HomePageStartupHelper;

    invoke-static {v0}, Lcom/miui/gallery/activity/HomePageStartupHelper;->access$000(Lcom/miui/gallery/activity/HomePageStartupHelper;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageStartupHelper$1;->this$0:Lcom/miui/gallery/activity/HomePageStartupHelper;

    invoke-static {v0}, Lcom/miui/gallery/activity/HomePageStartupHelper;->access$000(Lcom/miui/gallery/activity/HomePageStartupHelper;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 84
    :cond_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 93
    :cond_3
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/activity/HomePageStartupHelper$1$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/activity/HomePageStartupHelper$1$1;-><init>(Lcom/miui/gallery/activity/HomePageStartupHelper$1;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 101
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageStartupHelper$1;->this$0:Lcom/miui/gallery/activity/HomePageStartupHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/activity/HomePageStartupHelper;->access$802(Lcom/miui/gallery/activity/HomePageStartupHelper;Z)Z

    .line 102
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageStartupHelper$1;->this$0:Lcom/miui/gallery/activity/HomePageStartupHelper;

    invoke-static {v0, v9}, Lcom/miui/gallery/activity/HomePageStartupHelper;->access$900(Lcom/miui/gallery/activity/HomePageStartupHelper;Ljava/util/ArrayList;)V

    .line 104
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageStartupHelper$1;->this$0:Lcom/miui/gallery/activity/HomePageStartupHelper;

    invoke-static {v0}, Lcom/miui/gallery/activity/HomePageStartupHelper;->access$300(Lcom/miui/gallery/activity/HomePageStartupHelper;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 105
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageStartupHelper$1;->this$0:Lcom/miui/gallery/activity/HomePageStartupHelper;

    invoke-static {v0}, Lcom/miui/gallery/activity/HomePageStartupHelper;->access$400(Lcom/miui/gallery/activity/HomePageStartupHelper;)V

    .line 107
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 75
    .end local v6    # "count":I
    .end local v9    # "displayItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/activity/HomePageStartupHelper$ImageDisplayItem;>;"
    .end local v12    # "preLoadImageCount":I
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 86
    .restart local v6    # "count":I
    .restart local v9    # "displayItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/activity/HomePageStartupHelper$ImageDisplayItem;>;"
    .restart local v12    # "preLoadImageCount":I
    :cond_5
    :try_start_4
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageStartupHelper$1;->this$0:Lcom/miui/gallery/activity/HomePageStartupHelper;

    invoke-static {v0}, Lcom/miui/gallery/activity/HomePageStartupHelper;->access$000(Lcom/miui/gallery/activity/HomePageStartupHelper;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v2, 0xc

    const/4 v3, 0x5

    invoke-static {v0, v2, v3}, Lcom/miui/gallery/adapter/HomePageAdapter;->getMicroPath(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v11

    .line 87
    .local v11, "filePath":Ljava/lang/String;
    if-eqz v11, :cond_6

    .line 88
    new-instance v0, Lcom/miui/gallery/activity/HomePageStartupHelper$ImageDisplayItem;

    iget-object v2, p0, Lcom/miui/gallery/activity/HomePageStartupHelper$1;->this$0:Lcom/miui/gallery/activity/HomePageStartupHelper;

    iget-object v3, p0, Lcom/miui/gallery/activity/HomePageStartupHelper$1;->this$0:Lcom/miui/gallery/activity/HomePageStartupHelper;

    invoke-static {v3}, Lcom/miui/gallery/activity/HomePageStartupHelper;->access$000(Lcom/miui/gallery/activity/HomePageStartupHelper;)Landroid/database/Cursor;

    move-result-object v3

    const/16 v4, 0x10

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-direct {v0, v2, v11, v4, v5}, Lcom/miui/gallery/activity/HomePageStartupHelper$ImageDisplayItem;-><init>(Lcom/miui/gallery/activity/HomePageStartupHelper;Ljava/lang/String;J)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_6
    monitor-exit v1

    move v7, v6

    .end local v6    # "count":I
    .restart local v7    # "count":I
    goto :goto_2

    .end local v7    # "count":I
    .end local v11    # "filePath":Ljava/lang/String;
    .restart local v6    # "count":I
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
