.class public Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;
.super Ljava/lang/Object;
.source "TranslationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranslationResult"
.end annotation


# static fields
.field public static final STATE_ABORT:I = 0x4

.field public static final STATE_FIND_FAIL:I = 0x3

.field public static final STATE_OCR_FAIL:I = 0x2

.field public static final STATE_SUCCESS:I = 0x1


# instance fields
.field mCredibility:Z

.field mDefinition:Ljava/lang/String;

.field mMore:Ljava/lang/String;

.field mOcrResult:Ljava/lang/String;

.field mState:I

.field mSymbols:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->this$0:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->this$0:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p2, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->mOcrResult:Ljava/lang/String;

    .line 240
    return-void
.end method

.method constructor <init>(Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;
    .param p2, "result"    # Ljava/lang/String;
    .param p4, "explanation"    # Ljava/lang/String;
    .param p5, "more"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 231
    .local p3, "symbols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->this$0:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-object p2, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->mOcrResult:Ljava/lang/String;

    .line 233
    iput-object p3, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->mSymbols:Ljava/util/ArrayList;

    .line 234
    iput-object p4, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->mDefinition:Ljava/lang/String;

    .line 235
    iput-object p5, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->mMore:Ljava/lang/String;

    .line 236
    return-void
.end method

.method private getSpannableString()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    const/16 v4, 0x21

    const/4 v3, 0x0

    .line 316
    iget-boolean v1, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->mCredibility:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->mOcrResult:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, ""

    .line 327
    :goto_0
    return-object v0

    .line 318
    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->mOcrResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 320
    .local v0, "ssBuilder":Landroid/text/SpannableStringBuilder;
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget-object v2, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->mOcrResult:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 322
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v2, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->mOcrResult:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 326
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->mDefinition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public getCredibility()Z
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->mCredibility:Z

    return v0
.end method

.method public getDefinition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->mDefinition:Ljava/lang/String;

    return-object v0
.end method

.method public getMoreDefinition()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 332
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->this$0:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    iget-object v1, v1, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0700cb

    .line 333
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 334
    .local v0, "ssBuilder":Landroid/text/SpannableStringBuilder;
    new-instance v1, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$NoLineClickSpan;

    iget-object v2, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->this$0:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    iget-object v3, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->mOcrResult:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$NoLineClickSpan;-><init>(Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 336
    return-object v0
.end method

.method public getOcrResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->mOcrResult:Ljava/lang/String;

    return-object v0
.end method

.method public getSpannableDef()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->getSpannableString()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->mState:I

    return v0
.end method

.method public getSymbols()Ljava/lang/String;
    .locals 5

    .prologue
    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->mSymbols:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 266
    iget-object v2, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->mSymbols:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 267
    .local v1, "symbol":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 270
    .end local v1    # "symbol":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public isAborted()Z
    .locals 2

    .prologue
    .line 302
    iget v0, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDefinitionFound()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 298
    iget v1, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->mState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOcrOnly()Z
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->mOcrResult:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->mSymbols:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->mDefinition:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOcrSuccess()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->mCredibility:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->mOcrResult:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCredibility(Z)V
    .locals 0
    .param p1, "credibility"    # Z

    .prologue
    .line 290
    iput-boolean p1, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->mCredibility:Z

    .line 291
    return-void
.end method

.method public setDefinition(Ljava/lang/String;)V
    .locals 1
    .param p1, "explanation"    # Ljava/lang/String;

    .prologue
    .line 274
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->mDefinition:Ljava/lang/String;

    .line 275
    return-void
.end method

.method public setOcrResult(Ljava/lang/String;)V
    .locals 1
    .param p1, "ocrResult"    # Ljava/lang/String;

    .prologue
    .line 255
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->mOcrResult:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public setState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 310
    iget v0, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->mState:I

    if-nez v0, :cond_0

    .line 311
    iput p1, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->mState:I

    .line 313
    :cond_0
    return-void
.end method

.method public setSymbols(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 282
    .local p1, "symbols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->mSymbols:Ljava/util/ArrayList;

    .line 283
    return-void
.end method
