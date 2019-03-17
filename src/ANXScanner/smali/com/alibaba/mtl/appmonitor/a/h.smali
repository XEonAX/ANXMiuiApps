.class public Lcom/alibaba/mtl/appmonitor/a/h;
.super Ljava/lang/Object;
.source "UTEvent.java"

# interfaces
.implements Lcom/alibaba/mtl/appmonitor/c/b;


# instance fields
.field public e:I

.field public n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    iput-object v1, p0, Lcom/alibaba/mtl/appmonitor/a/h;->u:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/mtl/appmonitor/a/h;->e:I

    .line 31
    iput-object v1, p0, Lcom/alibaba/mtl/appmonitor/a/h;->v:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/alibaba/mtl/appmonitor/a/h;->w:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/alibaba/mtl/appmonitor/a/h;->x:Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/h;->n:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/h;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 37
    :cond_0
    return-void
.end method

.method public varargs fill([Ljava/lang/Object;)V
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/h;->n:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/h;->n:Ljava/util/Map;

    .line 44
    :cond_0
    return-void
.end method
