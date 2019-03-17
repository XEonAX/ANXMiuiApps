.class Lcom/miui/gallery/ui/PhotoSlimFragment$3;
.super Ljava/lang/Object;
.source "PhotoSlimFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoSlimFragment;->showExitConfirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoSlimFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoSlimFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/PhotoSlimFragment;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoSlimFragment$3;->this$0:Lcom/miui/gallery/ui/PhotoSlimFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoSlimFragment$3;->this$0:Lcom/miui/gallery/ui/PhotoSlimFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoSlimFragment;->access$100(Lcom/miui/gallery/ui/PhotoSlimFragment;)V

    .line 197
    return-void
.end method
