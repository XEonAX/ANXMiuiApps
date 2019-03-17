.class public Lcom/alibaba/mtl/appmonitor/d/b;
.super Ljava/lang/Object;
.source "AccurateSampleCondition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/mtl/appmonitor/d/b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/mtl/appmonitor/d/b$a;

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public b(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    :cond_0
    :goto_0
    return v0

    .line 26
    :cond_1
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/d/b;->c:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 27
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/d/b;->a:Lcom/alibaba/mtl/appmonitor/d/b$a;

    sget-object v3, Lcom/alibaba/mtl/appmonitor/d/b$a;->b:Lcom/alibaba/mtl/appmonitor/d/b$a;

    if-ne v2, v3, :cond_2

    move v0, v1

    .line 28
    goto :goto_0

    .line 30
    :cond_2
    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
