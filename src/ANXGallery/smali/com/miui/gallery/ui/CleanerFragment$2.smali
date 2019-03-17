.class Lcom/miui/gallery/ui/CleanerFragment$2;
.super Ljava/lang/Object;
.source "CleanerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/CleanerFragment;->onBackPressed()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/CleanerFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/CleanerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/CleanerFragment;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/miui/gallery/ui/CleanerFragment$2;->this$0:Lcom/miui/gallery/ui/CleanerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$2;->this$0:Lcom/miui/gallery/ui/CleanerFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CleanerFragment;->access$000(Lcom/miui/gallery/ui/CleanerFragment;)V

    .line 106
    return-void
.end method
