.class Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils$1;
.super Ljava/util/HashMap;
.source "TUnionPhoneInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;


# direct methods
.method constructor <init>(Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;)V
    .locals 2

    .prologue
    .line 36
    iput-object p1, p0, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils$1;->a:Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 37
    const-string v0, "com.taobao.taobao"

    const-string v1, "tb"

    invoke-virtual {p0, v0, v1}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v0, "com.tmall.wireless"

    const-string v1, "tm"

    invoke-virtual {p0, v0, v1}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v0, "com.taobao.ju.android"

    const-string v1, "ju"

    invoke-virtual {p0, v0, v1}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method
