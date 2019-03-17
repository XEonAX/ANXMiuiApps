.class public Lcom/miui/gallery/collage/core/poster/TextElementModel;
.super Lcom/miui/gallery/collage/core/poster/ElementPositionModel;
.source "TextElementModel.java"


# instance fields
.field public currentText:Ljava/lang/String;

.field public letterSpace:F

.field public maxLength:I

.field public text:Ljava/lang/String;

.field public textColor:Ljava/lang/String;

.field public textSize:F


# virtual methods
.method public getText(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    iget-object v2, p0, Lcom/miui/gallery/collage/core/poster/TextElementModel;->text:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 20
    const-string v2, ""

    .line 31
    :goto_0
    return-object v2

    .line 22
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 23
    .local v1, "resources":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/miui/gallery/collage/core/poster/TextElementModel;->text:Ljava/lang/String;

    const-string v3, "@string/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 24
    iget-object v2, p0, Lcom/miui/gallery/collage/core/poster/TextElementModel;->text:Ljava/lang/String;

    const-string v3, "@string/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "string"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 25
    .local v0, "resId":I
    if-eqz v0, :cond_1

    .line 26
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 28
    :cond_1
    const-string v2, ""

    goto :goto_0

    .line 31
    .end local v0    # "resId":I
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/collage/core/poster/TextElementModel;->text:Ljava/lang/String;

    goto :goto_0
.end method
