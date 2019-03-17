.class Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$1;
.super Ljava/lang/Object;
.source "MovieSavingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$1;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "anInterface"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 54
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$1;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;->access$000(Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;)Z

    move-result v0

    .line 57
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
