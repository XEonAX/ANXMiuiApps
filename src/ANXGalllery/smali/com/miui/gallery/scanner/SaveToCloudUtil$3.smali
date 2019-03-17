.class final Lcom/miui/gallery/scanner/SaveToCloudUtil$3;
.super Ljava/lang/Object;
.source "SaveToCloudUtil.java"

# interfaces
.implements Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/scanner/SaveToCloudUtil;->findEntry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/SafeDBUtil$QueryHandler",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 976
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 976
    invoke-virtual {p0, p1}, Lcom/miui/gallery/scanner/SaveToCloudUtil$3;->handle(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public handle(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 979
    if-nez p1, :cond_0

    .line 980
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "query cursor is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 982
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 983
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;>;"
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 984
    invoke-static {p1}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->access$400(Landroid/database/Cursor;)Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 986
    :cond_1
    return-object v0
.end method
