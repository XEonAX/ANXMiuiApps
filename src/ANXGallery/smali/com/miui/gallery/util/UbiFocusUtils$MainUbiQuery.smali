.class Lcom/miui/gallery/util/UbiFocusUtils$MainUbiQuery;
.super Lcom/miui/gallery/util/UbiFocusUtils$UbiQuery;
.source "UbiFocusUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/UbiFocusUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MainUbiQuery"
.end annotation


# direct methods
.method constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "isShare"    # Z
    .param p2, "requestId"    # Ljava/lang/String;
    .param p3, "localId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 82
    invoke-direct {p0}, Lcom/miui/gallery/util/UbiFocusUtils$UbiQuery;-><init>()V

    .line 83
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    :goto_0
    return-void

    .line 86
    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo v0, "shareId"

    .line 87
    .local v0, "requestIdColumnName":Ljava/lang/String;
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    const-string v1, "_id = ? "

    iput-object v1, p0, Lcom/miui/gallery/util/UbiFocusUtils$MainUbiQuery;->queryString:Ljava/lang/String;

    .line 90
    new-array v1, v4, [Ljava/lang/String;

    aput-object p3, v1, v3

    iput-object v1, p0, Lcom/miui/gallery/util/UbiFocusUtils$MainUbiQuery;->queryArgs:[Ljava/lang/String;

    goto :goto_0

    .line 86
    .end local v0    # "requestIdColumnName":Ljava/lang/String;
    :cond_1
    const-string v0, "serverId"

    goto :goto_1

    .line 91
    .restart local v0    # "requestIdColumnName":Ljava/lang/String;
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/util/UbiFocusUtils$MainUbiQuery;->queryString:Ljava/lang/String;

    .line 93
    new-array v1, v4, [Ljava/lang/String;

    aput-object p2, v1, v3

    iput-object v1, p0, Lcom/miui/gallery/util/UbiFocusUtils$MainUbiQuery;->queryArgs:[Ljava/lang/String;

    goto :goto_0

    .line 95
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = ? OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = ? ) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/util/UbiFocusUtils$MainUbiQuery;->queryString:Ljava/lang/String;

    .line 97
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    aput-object p2, v1, v3

    aput-object p3, v1, v4

    iput-object v1, p0, Lcom/miui/gallery/util/UbiFocusUtils$MainUbiQuery;->queryArgs:[Ljava/lang/String;

    goto :goto_0
.end method
