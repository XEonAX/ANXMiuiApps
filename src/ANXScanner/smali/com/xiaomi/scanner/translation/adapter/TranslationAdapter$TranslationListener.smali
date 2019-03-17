.class public interface abstract Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationListener;
.super Ljava/lang/Object;
.source "TranslationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TranslationListener"
.end annotation


# virtual methods
.method public abstract onDefinitionDone(Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;)V
.end method

.method public abstract onOcrDone(Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;Lcom/xiaomi/scanner/translation/bean/ScanDataBean$ScanType;)V
.end method

.method public abstract onOcrFail()V
.end method

.method public abstract onTranslationDone()V
.end method
