.class public Lcom/xiaomi/mistatistic/sdk/data/f;
.super Lcom/xiaomi/mistatistic/sdk/data/e;
.source "CustomNumericPropertyEvent.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/mistatistic/sdk/data/e;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 8
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    const-string v0, "numeric"

    return-object v0
.end method
