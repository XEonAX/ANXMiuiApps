.class public Lcom/uploader/implement/b;
.super Ljava/lang/Object;
.source "StatisticsTool.java"


# static fields
.field private static volatile a:Lcom/uploader/export/IUploaderStatistics;


# direct methods
.method static final a(Lcom/uploader/export/IUploaderStatistics;)V
    .locals 0
    .param p0, "statistics"    # Lcom/uploader/export/IUploaderStatistics;

    .prologue
    .line 18
    sput-object p0, Lcom/uploader/implement/b;->a:Lcom/uploader/export/IUploaderStatistics;

    .line 19
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "measures"    # Ljava/util/Map;
    .param p3, "dimensions"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    sget-object v0, Lcom/uploader/implement/b;->a:Lcom/uploader/export/IUploaderStatistics;

    .line 32
    .local v0, "statistics":Lcom/uploader/export/IUploaderStatistics;
    if-nez v0, :cond_0

    .line 36
    :goto_0
    return-void

    .line 35
    :cond_0
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/uploader/export/IUploaderStatistics;->onCommit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Z)V
    .locals 6
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "measures"    # Ljava/util/Set;
    .param p3, "dimensions"    # Ljava/util/Set;
    .param p4, "commitDetail"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 23
    sget-object v0, Lcom/uploader/implement/b;->a:Lcom/uploader/export/IUploaderStatistics;

    .line 24
    .local v0, "statistics":Lcom/uploader/export/IUploaderStatistics;
    if-nez v0, :cond_0

    .line 28
    :goto_0
    return-void

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 27
    invoke-interface/range {v0 .. v5}, Lcom/uploader/export/IUploaderStatistics;->onRegister(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Z)V

    goto :goto_0
.end method
