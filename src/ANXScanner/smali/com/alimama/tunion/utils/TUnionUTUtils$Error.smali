.class public Lcom/alimama/tunion/utils/TUnionUTUtils$Error;
.super Ljava/lang/Object;
.source "TUnionUTUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alimama/tunion/utils/TUnionUTUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Error"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 90
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    const-string p0, "None"

    .line 93
    :cond_0
    const-string v1, "ErrorDescription"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v1, "TUnionError"

    const-string v2, "ErrorCode"

    invoke-static {v1, v2, v0}, Lcom/alimama/tunion/utils/TUnionUTUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 95
    return-void
.end method
