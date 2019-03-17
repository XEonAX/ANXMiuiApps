.class public Lcom/miui/gallery/agreement/cta/CtaAgreement;
.super Ljava/lang/Object;
.source "CtaAgreement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/agreement/cta/CtaAgreement$Licence;
    }
.end annotation


# direct methods
.method public static buildUserNotice(Landroid/content/Context;I)Landroid/text/SpannableStringBuilder;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userNoticeMessageFormat"    # I

    .prologue
    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 41
    .local v2, "res":Landroid/content/res/Resources;
    const v4, 0x7f0c050c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 42
    .local v3, "userAgreement":Ljava/lang/String;
    const v4, 0x7f0c050d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "privacyPolicy":Ljava/lang/String;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-virtual {v2, p1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "message":Ljava/lang/String;
    invoke-static {p0, v0, v3, v1}, Lcom/miui/gallery/agreement/cta/CtaAgreement;->buildUserNotice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    return-object v4
.end method

.method public static buildUserNotice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userNoticeMessage"    # Ljava/lang/String;
    .param p2, "userAgreement"    # Ljava/lang/String;
    .param p3, "privacyPolicy"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x21

    .line 49
    new-instance v0, Lcom/miui/gallery/agreement/cta/CtaAgreement$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/agreement/cta/CtaAgreement$1;-><init>(Landroid/content/Context;)V

    .line 56
    .local v0, "agreementUrlClickListener":Lcom/miui/gallery/text/UrlSpan$UrlSpanOnClickListener;
    new-instance v1, Lcom/miui/gallery/agreement/cta/CtaAgreement$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/agreement/cta/CtaAgreement$2;-><init>(Landroid/content/Context;)V

    .line 63
    .local v1, "privacyUrlClickListener":Lcom/miui/gallery/text/UrlSpan$UrlSpanOnClickListener;
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 64
    .local v3, "userNotice":Landroid/text/SpannableStringBuilder;
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 65
    .local v2, "start":I
    new-instance v4, Lcom/miui/gallery/text/UrlSpan;

    invoke-direct {v4, v0}, Lcom/miui/gallery/text/UrlSpan;-><init>(Lcom/miui/gallery/text/UrlSpan$UrlSpanOnClickListener;)V

    .line 67
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    .line 65
    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 69
    invoke-virtual {p1, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 70
    new-instance v4, Lcom/miui/gallery/text/UrlSpan;

    invoke-direct {v4, v1}, Lcom/miui/gallery/text/UrlSpan;-><init>(Lcom/miui/gallery/text/UrlSpan$UrlSpanOnClickListener;)V

    .line 72
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    .line 70
    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 73
    return-object v3
.end method
