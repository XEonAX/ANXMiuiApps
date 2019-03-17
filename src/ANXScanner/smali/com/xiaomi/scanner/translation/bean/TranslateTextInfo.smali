.class public Lcom/xiaomi/scanner/translation/bean/TranslateTextInfo;
.super Ljava/lang/Object;
.source "TranslateTextInfo.java"


# instance fields
.field public desLangCode:Ljava/lang/String;

.field public resultStatus:I

.field public srcLangCode:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public translateText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/scanner/translation/bean/TranslateTextInfo;->resultStatus:I

    return-void
.end method
