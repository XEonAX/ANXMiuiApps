.class public Lcom/alimama/tunion/utils/TUnionUTUtils$Convert;
.super Ljava/lang/Object;
.source "TUnionUTUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alimama/tunion/utils/TUnionUTUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Convert"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert()V
    .locals 3

    .prologue
    .line 27
    const-string v0, "TUnionConvert"

    const-string v1, "convert"

    invoke-static {}, Lcom/alimama/tunion/utils/TUnionUTUtils;->a()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alimama/tunion/utils/TUnionUTUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 28
    return-void
.end method

.method public static failed(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 44
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const-string p0, "None"

    .line 48
    :cond_0
    invoke-static {}, Lcom/alimama/tunion/utils/TUnionUTUtils;->a()Ljava/util/Map;

    move-result-object v0

    .line 49
    const-string v1, "msg"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v1, "TUnionConvert"

    const-string v2, "failed"

    invoke-static {v1, v2, v0}, Lcom/alimama/tunion/utils/TUnionUTUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 52
    return-void
.end method

.method public static request()V
    .locals 3

    .prologue
    .line 35
    const-string v0, "TUnionConvert"

    const-string v1, "request"

    invoke-static {}, Lcom/alimama/tunion/utils/TUnionUTUtils;->a()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alimama/tunion/utils/TUnionUTUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 36
    return-void
.end method
