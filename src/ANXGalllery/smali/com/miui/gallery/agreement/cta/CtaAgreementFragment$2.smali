.class Lcom/miui/gallery/agreement/cta/CtaAgreementFragment$2;
.super Ljava/lang/Object;
.source "CtaAgreementFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/agreement/cta/CtaAgreementFragment;->getNegativeListener()Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/agreement/cta/CtaAgreementFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/agreement/cta/CtaAgreementFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/agreement/cta/CtaAgreementFragment;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/miui/gallery/agreement/cta/CtaAgreementFragment$2;->this$0:Lcom/miui/gallery/agreement/cta/CtaAgreementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 92
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/gallery/preference/BaseGalleryPreferences$CTA;->setToAllowUseOnOfflineGlobal(Z)V

    .line 93
    iget-object v0, p0, Lcom/miui/gallery/agreement/cta/CtaAgreementFragment$2;->this$0:Lcom/miui/gallery/agreement/cta/CtaAgreementFragment;

    invoke-static {v0}, Lcom/miui/gallery/agreement/cta/CtaAgreementFragment;->access$000(Lcom/miui/gallery/agreement/cta/CtaAgreementFragment;)Lcom/miui/gallery/agreement/core/OnAgreementInvokedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/miui/gallery/agreement/cta/CtaAgreementFragment$2;->this$0:Lcom/miui/gallery/agreement/cta/CtaAgreementFragment;

    invoke-static {v0}, Lcom/miui/gallery/agreement/cta/CtaAgreementFragment;->access$000(Lcom/miui/gallery/agreement/cta/CtaAgreementFragment;)Lcom/miui/gallery/agreement/core/OnAgreementInvokedListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/miui/gallery/agreement/core/OnAgreementInvokedListener;->onAgreementInvoked(Z)V

    .line 96
    :cond_0
    return-void
.end method
