.class Lcom/miui/gallery/activity/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/miui/gallery/agreement/core/OnAgreementInvokedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/activity/BaseActivity;->onPermissionsChecked([Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/activity/BaseActivity;


# direct methods
.method constructor <init>(Lcom/miui/gallery/activity/BaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/activity/BaseActivity;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/miui/gallery/activity/BaseActivity$1;->this$0:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAgreementInvoked(Z)V
    .locals 1
    .param p1, "agreed"    # Z

    .prologue
    .line 156
    iget-object v0, p0, Lcom/miui/gallery/activity/BaseActivity$1;->this$0:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->allowUseOnOffline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/miui/gallery/activity/BaseActivity$1;->this$0:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->finish()V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/activity/BaseActivity$1;->this$0:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onCtaChecked(Z)V

    .line 160
    return-void
.end method
