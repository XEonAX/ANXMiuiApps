.class public Lcom/xiaomi/scanner/translation/bean/TranslateResult$TranslateResultInfo;
.super Ljava/lang/Object;
.source "TranslateResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/translation/bean/TranslateResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TranslateResultInfo"
.end annotation


# instance fields
.field public backgroundImageUrl:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;",
            ">;"
        }
    .end annotation
.end field

.field public orientation:Ljava/lang/String;

.field public to:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
