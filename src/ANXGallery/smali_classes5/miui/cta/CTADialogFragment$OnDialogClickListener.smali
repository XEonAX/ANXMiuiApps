.class Lmiui/cta/CTADialogFragment$OnDialogClickListener;
.super Ljava/lang/Object;
.source "CTADialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cta/CTADialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnDialogClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/cta/CTADialogFragment;


# direct methods
.method private constructor <init>(Lmiui/cta/CTADialogFragment;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lmiui/cta/CTADialogFragment$OnDialogClickListener;->this$0:Lmiui/cta/CTADialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/cta/CTADialogFragment;Lmiui/cta/CTADialogFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/cta/CTADialogFragment;
    .param p2, "x1"    # Lmiui/cta/CTADialogFragment$1;

    .line 76
    invoke-direct {p0, p1}, Lmiui/cta/CTADialogFragment$OnDialogClickListener;-><init>(Lmiui/cta/CTADialogFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 80
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 81
    invoke-static {}, Lmiui/cta/CTAManager;->getInstance()Lmiui/cta/CTAManager;

    move-result-object v0

    iget-object v1, p0, Lmiui/cta/CTADialogFragment$OnDialogClickListener;->this$0:Lmiui/cta/CTADialogFragment;

    invoke-virtual {v1}, Lmiui/cta/CTADialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/cta/CTAManager;->onAccept(Landroid/app/Activity;)V

    goto :goto_0

    .line 82
    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 83
    iget-object v0, p0, Lmiui/cta/CTADialogFragment$OnDialogClickListener;->this$0:Lmiui/cta/CTADialogFragment;

    invoke-virtual {v0, p1}, Lmiui/cta/CTADialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 85
    :cond_1
    :goto_0
    return-void
.end method
