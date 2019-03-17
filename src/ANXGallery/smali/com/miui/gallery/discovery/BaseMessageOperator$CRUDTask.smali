.class public abstract Lcom/miui/gallery/discovery/BaseMessageOperator$CRUDTask;
.super Ljava/lang/Object;
.source "BaseMessageOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/discovery/BaseMessageOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "CRUDTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    .local p0, "this":Lcom/miui/gallery/discovery/BaseMessageOperator$CRUDTask;, "Lcom/miui/gallery/discovery/BaseMessageOperator$CRUDTask<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$CRUDTask;->mContext:Landroid/content/Context;

    .line 78
    return-void
.end method


# virtual methods
.method protected abstract execute(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method protected abstract prepareData()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected run()Z
    .locals 3

    .prologue
    .line 85
    .local p0, "this":Lcom/miui/gallery/discovery/BaseMessageOperator$CRUDTask;, "Lcom/miui/gallery/discovery/BaseMessageOperator$CRUDTask<TT;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/discovery/BaseMessageOperator$CRUDTask;->prepareData()Ljava/lang/Object;

    move-result-object v0

    .line 86
    .local v0, "data":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_0

    .line 87
    const-string v1, "BaseMessageOperator"

    const-string v2, "Can\'t execute task when prepared data was null"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const/4 v1, 0x0

    .line 90
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/gallery/discovery/BaseMessageOperator$CRUDTask;->execute(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method
