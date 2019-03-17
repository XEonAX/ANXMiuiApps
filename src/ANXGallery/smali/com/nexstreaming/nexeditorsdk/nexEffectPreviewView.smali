.class public Lcom/nexstreaming/nexeditorsdk/nexEffectPreviewView;
.super Lcom/nexstreaming/app/common/nexasset/preview/a;
.source "nexEffectPreviewView.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/nexstreaming/app/common/nexasset/preview/a;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectRatio()F

    move-result v0

    invoke-super {p0, v0}, Lcom/nexstreaming/app/common/nexasset/preview/a;->setAspectRatio(F)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/nexstreaming/app/common/nexasset/preview/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectRatio()F

    move-result v0

    invoke-super {p0, v0}, Lcom/nexstreaming/app/common/nexasset/preview/a;->setAspectRatio(F)V

    .line 55
    return-void
.end method


# virtual methods
.method public setEffect(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/nexstreaming/app/common/nexasset/preview/a;->setEffect(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public setEffectOptions(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/nexstreaming/app/common/nexasset/preview/a;->setEffectOptions(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public setEffectTime(I)V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/nexstreaming/app/common/nexasset/preview/a;->setEffectTime(I)V

    .line 88
    return-void
.end method
