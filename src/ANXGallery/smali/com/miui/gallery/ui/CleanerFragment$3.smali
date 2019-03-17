.class Lcom/miui/gallery/ui/CleanerFragment$3;
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
    .line 94
    iput-object p1, p0, Lcom/miui/gallery/ui/CleanerFragment$3;->this$0:Lcom/miui/gallery/ui/CleanerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$3;->this$0:Lcom/miui/gallery/ui/CleanerFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CleanerFragment;->access$100(Lcom/miui/gallery/ui/CleanerFragment;)V

    .line 98
    const-string v0, "cleaner"

    const-string v1, "cleaner_scan_exit_confirm"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method
