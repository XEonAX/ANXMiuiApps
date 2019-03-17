.class Lcom/xiaomi/mistatistic/sdk/controller/i$1;
.super Ljava/lang/Object;
.source "HttpEventController.java"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/HttpEventFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/i;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/controller/i;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/i;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/i$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;)Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p1}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    const-string v1, "\\?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 68
    invoke-virtual {p1, v0}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->setUrl(Ljava/lang/String;)V

    .line 71
    :goto_0
    return-object p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method
