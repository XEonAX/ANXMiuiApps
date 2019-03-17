.class final Lcom/miui/gallery/agreement/cta/CtaAgreement$2;
.super Ljava/lang/Object;
.source "CtaAgreement.java"

# interfaces
.implements Lcom/miui/gallery/text/UrlSpan$UrlSpanOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/agreement/cta/CtaAgreement;->buildUserNotice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/miui/gallery/agreement/cta/CtaAgreement$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/gallery/agreement/cta/CtaAgreement$2;->val$context:Landroid/content/Context;

    invoke-static {}, Lcom/miui/gallery/agreement/cta/CtaAgreement$Licence;->getPrivacyIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 60
    return-void
.end method
