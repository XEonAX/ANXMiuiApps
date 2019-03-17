.class public abstract Lcom/miui/gallery/cloud/peopleface/syncoperation/FaceRequestOperationBase;
.super Lcom/miui/gallery/cloud/RequestOperationBase;
.source "FaceRequestOperationBase.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/RequestOperationBase;-><init>(Landroid/content/Context;)V

    .line 11
    return-void
.end method


# virtual methods
.method public getLimitCountForOperation()I
    .locals 1

    .prologue
    .line 14
    const/4 v0, -0x1

    return v0
.end method
