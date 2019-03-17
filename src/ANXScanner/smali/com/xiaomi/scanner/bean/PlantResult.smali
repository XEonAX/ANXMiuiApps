.class public Lcom/xiaomi/scanner/bean/PlantResult;
.super Ljava/lang/Object;
.source "PlantResult.java"


# instance fields
.field public requestId:Ljava/lang/String;

.field public resultCode:I

.field public resultPage:Ljava/lang/String;

.field public sequenceId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSuccess()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 17
    iget v1, p0, Lcom/xiaomi/scanner/bean/PlantResult;->resultCode:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
