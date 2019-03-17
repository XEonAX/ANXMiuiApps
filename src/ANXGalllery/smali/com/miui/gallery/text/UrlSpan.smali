.class public Lcom/miui/gallery/text/UrlSpan;
.super Landroid/text/style/ClickableSpan;
.source "UrlSpan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/text/UrlSpan$UrlSpanOnClickListener;
    }
.end annotation


# instance fields
.field private mOnClickListener:Lcom/miui/gallery/text/UrlSpan$UrlSpanOnClickListener;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/text/UrlSpan$UrlSpanOnClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/miui/gallery/text/UrlSpan$UrlSpanOnClickListener;

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/miui/gallery/text/UrlSpan;->mOnClickListener:Lcom/miui/gallery/text/UrlSpan$UrlSpanOnClickListener;

    .line 17
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/text/UrlSpan;->mOnClickListener:Lcom/miui/gallery/text/UrlSpan$UrlSpanOnClickListener;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/miui/gallery/text/UrlSpan;->mOnClickListener:Lcom/miui/gallery/text/UrlSpan$UrlSpanOnClickListener;

    invoke-interface {v0}, Lcom/miui/gallery/text/UrlSpan$UrlSpanOnClickListener;->onClick()V

    .line 30
    :cond_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 21
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 22
    const v0, -0xffff01

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 23
    return-void
.end method
