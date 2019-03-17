.class public Lcom/alimama/tunion/utils/TUnionUTUtils$Config;
.super Ljava/lang/Object;
.source "TUnionUTUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alimama/tunion/utils/TUnionUTUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static failed(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 74
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const-string p0, "None"

    .line 78
    :cond_0
    invoke-static {}, Lcom/alimama/tunion/utils/TUnionUTUtils;->b()Ljava/util/Map;

    move-result-object v0

    .line 79
    const-string v1, "msg"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v1, "TUnionConfig"

    const-string v2, "failed"

    invoke-static {v1, v2, v0}, Lcom/alimama/tunion/utils/TUnionUTUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 82
    return-void
.end method

.method public static start()V
    .locals 3

    .prologue
    .line 64
    const-string v0, "TUnionConfig"

    const-string v1, "start"

    invoke-static {}, Lcom/alimama/tunion/utils/TUnionUTUtils;->b()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alimama/tunion/utils/TUnionUTUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 65
    return-void
.end method
