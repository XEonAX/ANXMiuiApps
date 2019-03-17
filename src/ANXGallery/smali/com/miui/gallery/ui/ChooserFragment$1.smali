.class Lcom/miui/gallery/ui/ChooserFragment$1;
.super Ljava/lang/Object;
.source "ChooserFragment.java"

# interfaces
.implements Lcom/miui/gallery/ui/ChooserFragment$OnIntentSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/ChooserFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/ChooserFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/ChooserFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/ChooserFragment;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/miui/gallery/ui/ChooserFragment$1;->this$0:Lcom/miui/gallery/ui/ChooserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIntentSelected(Landroid/content/Intent;)V
    .locals 1
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment$1;->this$0:Lcom/miui/gallery/ui/ChooserFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/ChooserFragment;->access$000(Lcom/miui/gallery/ui/ChooserFragment;)Lcom/miui/gallery/ui/ChooserFragment$OnIntentSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment$1;->this$0:Lcom/miui/gallery/ui/ChooserFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/ChooserFragment;->access$000(Lcom/miui/gallery/ui/ChooserFragment;)Lcom/miui/gallery/ui/ChooserFragment$OnIntentSelectedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/gallery/ui/ChooserFragment$OnIntentSelectedListener;->onIntentSelected(Landroid/content/Intent;)V

    .line 117
    :cond_0
    return-void
.end method
