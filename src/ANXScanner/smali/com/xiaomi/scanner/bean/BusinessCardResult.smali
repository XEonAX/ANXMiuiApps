.class public Lcom/xiaomi/scanner/bean/BusinessCardResult;
.super Ljava/lang/Object;
.source "BusinessCardResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/bean/BusinessCardResult$BusinessResultInfo;
    }
.end annotation


# instance fields
.field public businessCardResult:Lcom/xiaomi/scanner/bean/BusinessCardResult$BusinessResultInfo;

.field public requestId:Ljava/lang/String;

.field public resultCode:I

.field public sequenceId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method
