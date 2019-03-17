.class Lcom/miui/gallery/util/UbiFocusUtils$SubUbiQuery;
.super Lcom/miui/gallery/util/UbiFocusUtils$UbiQuery;
.source "UbiFocusUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/UbiFocusUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SubUbiQuery"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "serverId"    # Ljava/lang/String;
    .param p2, "localId"    # Ljava/lang/String;
    .param p3, "index"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Lcom/miui/gallery/util/UbiFocusUtils$UbiQuery;-><init>()V

    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 47
    .local v0, "hasIndex":Z
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ubiLocalId = ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_2

    const-string v3, " AND ubiSubIndex = ? "

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/util/UbiFocusUtils$SubUbiQuery;->queryString:Ljava/lang/String;

    .line 52
    if-eqz v0, :cond_3

    new-array v3, v5, [Ljava/lang/String;

    aput-object p2, v3, v2

    aput-object p3, v3, v1

    move-object v1, v3

    :goto_3
    iput-object v1, p0, Lcom/miui/gallery/util/UbiFocusUtils$SubUbiQuery;->queryArgs:[Ljava/lang/String;

    goto :goto_0

    .end local v0    # "hasIndex":Z
    :cond_1
    move v0, v2

    .line 46
    goto :goto_1

    .line 48
    .restart local v0    # "hasIndex":Z
    :cond_2
    const-string v3, ""

    goto :goto_2

    .line 52
    :cond_3
    new-array v1, v1, [Ljava/lang/String;

    aput-object p2, v1, v2

    goto :goto_3

    .line 57
    :cond_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ubiServerId = ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_5

    const-string v3, " AND ubiSubIndex = ? "

    :goto_4
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/util/UbiFocusUtils$SubUbiQuery;->queryString:Ljava/lang/String;

    .line 61
    if-eqz v0, :cond_6

    new-array v3, v5, [Ljava/lang/String;

    aput-object p1, v3, v2

    aput-object p3, v3, v1

    move-object v1, v3

    :goto_5
    iput-object v1, p0, Lcom/miui/gallery/util/UbiFocusUtils$SubUbiQuery;->queryArgs:[Ljava/lang/String;

    goto :goto_0

    .line 58
    :cond_5
    const-string v3, ""

    goto :goto_4

    .line 61
    :cond_6
    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    goto :goto_5

    .line 68
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ( ubiServerId = ? OR ubiLocalId = ? ) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_8

    const-string v3, " AND ubiSubIndex = ? "

    :goto_6
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/util/UbiFocusUtils$SubUbiQuery;->queryString:Ljava/lang/String;

    .line 72
    if-eqz v0, :cond_9

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v2

    aput-object p2, v3, v1

    aput-object p3, v3, v5

    move-object v1, v3

    :goto_7
    iput-object v1, p0, Lcom/miui/gallery/util/UbiFocusUtils$SubUbiQuery;->queryArgs:[Ljava/lang/String;

    goto/16 :goto_0

    .line 68
    :cond_8
    const-string v3, ""

    goto :goto_6

    .line 72
    :cond_9
    new-array v3, v5, [Ljava/lang/String;

    aput-object p1, v3, v2

    aput-object p2, v3, v1

    move-object v1, v3

    goto :goto_7
.end method
