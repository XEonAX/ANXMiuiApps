.class public Lcom/alibaba/mtl/appmonitor/c/d;
.super Lorg/json/JSONArray;
.source "ReuseJSONArray.java"

# interfaces
.implements Lcom/alibaba/mtl/appmonitor/c/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/mtl/appmonitor/c/d;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 23
    invoke-virtual {p0, v1}, Lcom/alibaba/mtl/appmonitor/c/d;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/alibaba/mtl/appmonitor/c/b;

    if-eqz v2, :cond_0

    .line 25
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v2

    check-cast v0, Lcom/alibaba/mtl/appmonitor/c/b;

    invoke-virtual {v2, v0}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Lcom/alibaba/mtl/appmonitor/c/b;)V

    .line 22
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method

.method public varargs fill([Ljava/lang/Object;)V
    .locals 0
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 34
    return-void
.end method
