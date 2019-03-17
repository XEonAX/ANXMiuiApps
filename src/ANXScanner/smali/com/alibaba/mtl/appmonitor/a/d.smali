.class public abstract Lcom/alibaba/mtl/appmonitor/a/d;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Lcom/alibaba/mtl/appmonitor/c/b;


# instance fields
.field public e:I

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 60
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v0

    const-class v1, Lcom/alibaba/mtl/appmonitor/c/e;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 62
    :try_start_0
    const-string v1, "page"

    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/a/d;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    const-string v1, "monitorPoint"

    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/a/d;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/a/d;->s:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 65
    const-string v1, "arg"

    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/a/d;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_0
    :goto_0
    return-object v0

    .line 67
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public clean()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/mtl/appmonitor/a/d;->e:I

    .line 76
    iput-object v1, p0, Lcom/alibaba/mtl/appmonitor/a/d;->o:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Lcom/alibaba/mtl/appmonitor/a/d;->p:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lcom/alibaba/mtl/appmonitor/a/d;->s:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public varargs fill([Ljava/lang/Object;)V
    .locals 2
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x3

    .line 83
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alibaba/mtl/appmonitor/a/d;->e:I

    .line 84
    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/d;->o:Ljava/lang/String;

    .line 85
    const/4 v0, 0x2

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/d;->p:Ljava/lang/String;

    .line 86
    array-length v0, p1

    if-le v0, v1, :cond_0

    aget-object v0, p1, v1

    if-eqz v0, :cond_0

    .line 87
    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/d;->s:Ljava/lang/String;

    .line 89
    :cond_0
    return-void
.end method
