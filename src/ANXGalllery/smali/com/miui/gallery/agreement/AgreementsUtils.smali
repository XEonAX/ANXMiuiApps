.class public Lcom/miui/gallery/agreement/AgreementsUtils;
.super Ljava/lang/Object;
.source "AgreementsUtils.java"


# direct methods
.method private static getAgreements(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/agreement/core/Agreement;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/agreement/core/Agreement;>;"
    new-instance v2, Lcom/miui/gallery/agreement/core/Agreement;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c050c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/miui/gallery/agreement/cta/CtaAgreement$Licence;->URL_MIUI_USER_AGREEMENT:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/agreement/core/Agreement;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 109
    .local v2, "terms":Lcom/miui/gallery/agreement/core/Agreement;
    new-instance v1, Lcom/miui/gallery/agreement/core/Agreement;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c050d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/miui/gallery/agreement/cta/CtaAgreement$Licence;->URL_MIUI_PRIVACY_POLICY:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v5}, Lcom/miui/gallery/agreement/core/Agreement;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 111
    .local v1, "privacy":Lcom/miui/gallery/agreement/core/Agreement;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    return-object v0
.end method

.method public static isKoreaRegion()Z
    .locals 2

    .prologue
    .line 121
    const-string v0, "KR"

    invoke-static {}, Lcom/miui/gallery/util/BaseBuildUtil;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isNetworkingAgreementAccepted()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 68
    invoke-static {}, Lcom/miui/gallery/util/BaseBuildUtil;->isInternational()Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    invoke-static {}, Lcom/miui/gallery/preference/BaseGalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v0

    .line 86
    :cond_0
    :goto_0
    return v0

    .line 72
    :cond_1
    invoke-static {}, Lcom/miui/gallery/agreement/AgreementsUtils;->isKoreaRegion()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 73
    invoke-static {}, Lcom/miui/gallery/preference/BaseGalleryPreferences$Agreement;->isRequiredAgreementsAllowed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 74
    invoke-static {}, Lcom/miui/gallery/preference/BaseGalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    invoke-static {v0}, Lcom/miui/gallery/preference/BaseGalleryPreferences$CTA;->setCanConnectNetwork(Z)V

    goto :goto_0

    .line 79
    :cond_2
    invoke-static {}, Lcom/miui/gallery/preference/BaseGalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v0

    goto :goto_0

    .line 83
    :cond_3
    invoke-static {}, Lcom/miui/gallery/preference/BaseGalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    invoke-static {v0}, Lcom/miui/gallery/preference/BaseGalleryPreferences$CTA;->setCanConnectNetwork(Z)V

    goto :goto_0
.end method

.method public static showNetworkingAgreement(Landroid/app/Activity;Lcom/miui/gallery/agreement/core/OnAgreementInvokedListener;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcom/miui/gallery/agreement/core/OnAgreementInvokedListener;

    .prologue
    .line 58
    new-instance v0, Lcom/miui/gallery/agreement/cta/CtaAgreementFragment;

    invoke-direct {v0}, Lcom/miui/gallery/agreement/cta/CtaAgreementFragment;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/miui/gallery/agreement/cta/CtaAgreementFragment;->invoke(Landroid/app/Activity;Lcom/miui/gallery/agreement/core/OnAgreementInvokedListener;)V

    .line 59
    return-void
.end method

.method public static showUserAgreements(Landroid/app/Activity;Lcom/miui/gallery/agreement/core/OnAgreementInvokedListener;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcom/miui/gallery/agreement/core/OnAgreementInvokedListener;

    .prologue
    const/4 v1, 0x1

    .line 26
    invoke-static {}, Lcom/miui/gallery/agreement/AgreementsUtils;->isKoreaRegion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    invoke-static {}, Lcom/miui/gallery/preference/BaseGalleryPreferences$Agreement;->isRequiredAgreementsAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-interface {p1, v1}, Lcom/miui/gallery/agreement/core/OnAgreementInvokedListener;->onAgreementInvoked(Z)V

    .line 54
    :goto_0
    return-void

    .line 31
    :cond_0
    invoke-static {p0}, Lcom/miui/gallery/agreement/AgreementsUtils;->getAgreements(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/agreement/AgreementDialogFragment;->newInstance(Ljava/util/ArrayList;)Lcom/miui/gallery/agreement/AgreementDialogFragment;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/agreement/AgreementsUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/agreement/AgreementsUtils$1;-><init>(Landroid/app/Activity;Lcom/miui/gallery/agreement/core/OnAgreementInvokedListener;)V

    invoke-virtual {v0, p0, v1}, Lcom/miui/gallery/agreement/AgreementDialogFragment;->invoke(Landroid/app/Activity;Lcom/miui/gallery/agreement/core/OnAgreementInvokedListener;)V

    goto :goto_0

    .line 47
    :cond_1
    invoke-static {}, Lcom/miui/gallery/util/BaseBuildUtil;->isInternational()Z

    move-result v0

    if-nez v0, :cond_2

    .line 48
    new-instance v0, Lcom/miui/gallery/agreement/cta/CtaAgreementFragment;

    invoke-direct {v0}, Lcom/miui/gallery/agreement/cta/CtaAgreementFragment;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/miui/gallery/agreement/cta/CtaAgreementFragment;->invoke(Landroid/app/Activity;Lcom/miui/gallery/agreement/core/OnAgreementInvokedListener;)V

    goto :goto_0

    .line 52
    :cond_2
    invoke-static {v1}, Lcom/miui/gallery/preference/BaseGalleryPreferences$CTA;->setCanConnectNetwork(Z)V

    .line 53
    invoke-interface {p1, v1}, Lcom/miui/gallery/agreement/core/OnAgreementInvokedListener;->onAgreementInvoked(Z)V

    goto :goto_0
.end method

.method public static viewAgreement(Landroid/content/Context;Lcom/miui/gallery/agreement/core/Agreement;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "agreement"    # Lcom/miui/gallery/agreement/core/Agreement;

    .prologue
    .line 90
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/miui/gallery/agreement/core/Agreement;->mLink:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 91
    :cond_0
    const-string v3, "AgreementsUtils"

    const-string v4, "agreement can\'t view"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :goto_0
    return-void

    .line 94
    :cond_1
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s?region=%s&lang=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p1, Lcom/miui/gallery/agreement/core/Agreement;->mLink:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 95
    invoke-static {}, Lcom/miui/gallery/util/BaseBuildUtil;->getRegion()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 94
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "url":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 99
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "AgreementsUtils"

    invoke-static {v3, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
