.class public abstract Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;
.super Ljava/lang/Object;
.source "AlgorithmResult.java"


# instance fields
.field private final resultCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "resultCode"    # I

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;->resultCode:I

    .line 16
    return-void
.end method


# virtual methods
.method public getResultCode()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;->resultCode:I

    return v0
.end method
