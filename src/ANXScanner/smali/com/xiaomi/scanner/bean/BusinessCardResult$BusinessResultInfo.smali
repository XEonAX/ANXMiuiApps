.class public Lcom/xiaomi/scanner/bean/BusinessCardResult$BusinessResultInfo;
.super Ljava/lang/Object;
.source "BusinessCardResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/bean/BusinessCardResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BusinessResultInfo"
.end annotation


# instance fields
.field public businessCardItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/scanner/bean/BusinessCardItem;",
            ">;"
        }
    .end annotation
.end field

.field public notEmpty:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
