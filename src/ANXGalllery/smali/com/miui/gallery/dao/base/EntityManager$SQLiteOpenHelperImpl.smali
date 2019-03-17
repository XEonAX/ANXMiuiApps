.class Lcom/miui/gallery/dao/base/EntityManager$SQLiteOpenHelperImpl;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "EntityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/dao/base/EntityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SQLiteOpenHelperImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/dao/base/EntityManager;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/dao/base/EntityManager;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "dbName"    # Ljava/lang/String;
    .param p4, "dbVersion"    # I

    .prologue
    .line 500
    iput-object p1, p0, Lcom/miui/gallery/dao/base/EntityManager$SQLiteOpenHelperImpl;->this$0:Lcom/miui/gallery/dao/base/EntityManager;

    .line 501
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 502
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 506
    iget-object v2, p0, Lcom/miui/gallery/dao/base/EntityManager$SQLiteOpenHelperImpl;->this$0:Lcom/miui/gallery/dao/base/EntityManager;

    invoke-static {v2}, Lcom/miui/gallery/dao/base/EntityManager;->access$000(Lcom/miui/gallery/dao/base/EntityManager;)V

    .line 508
    :try_start_0
    iget-object v2, p0, Lcom/miui/gallery/dao/base/EntityManager$SQLiteOpenHelperImpl;->this$0:Lcom/miui/gallery/dao/base/EntityManager;

    invoke-static {v2}, Lcom/miui/gallery/dao/base/EntityManager;->access$100(Lcom/miui/gallery/dao/base/EntityManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 509
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/miui/gallery/dao/base/Entity;>;"
    invoke-static {p1, v0}, Lcom/miui/gallery/dao/base/EntityManager;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 511
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/miui/gallery/dao/base/Entity;>;"
    :catch_0
    move-exception v1

    .line 512
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "EntityManager"

    const-string v3, "Db onCreate error.\n"

    invoke-static {v2, v3, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 514
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 529
    iget-object v0, p0, Lcom/miui/gallery/dao/base/EntityManager$SQLiteOpenHelperImpl;->this$0:Lcom/miui/gallery/dao/base/EntityManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/gallery/dao/base/EntityManager;->onDatabaseDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 530
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 518
    iget-object v1, p0, Lcom/miui/gallery/dao/base/EntityManager$SQLiteOpenHelperImpl;->this$0:Lcom/miui/gallery/dao/base/EntityManager;

    invoke-static {v1}, Lcom/miui/gallery/dao/base/EntityManager;->access$000(Lcom/miui/gallery/dao/base/EntityManager;)V

    .line 520
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/dao/base/EntityManager$SQLiteOpenHelperImpl;->this$0:Lcom/miui/gallery/dao/base/EntityManager;

    invoke-static {v1}, Lcom/miui/gallery/dao/base/EntityManager;->access$100(Lcom/miui/gallery/dao/base/EntityManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/gallery/dao/base/EntityManager;->checkTableChange(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    .line 521
    iget-object v1, p0, Lcom/miui/gallery/dao/base/EntityManager$SQLiteOpenHelperImpl;->this$0:Lcom/miui/gallery/dao/base/EntityManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/miui/gallery/dao/base/EntityManager;->onDatabaseUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    :goto_0
    return-void

    .line 522
    :catch_0
    move-exception v0

    .line 523
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "EntityManager"

    const-string v2, "Db onUpgrade error.\n"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
