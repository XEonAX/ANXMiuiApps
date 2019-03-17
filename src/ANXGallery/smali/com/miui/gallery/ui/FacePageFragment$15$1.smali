.class Lcom/miui/gallery/ui/FacePageFragment$15$1;
.super Ljava/lang/Object;
.source "FacePageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/FacePageFragment$15;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/FacePageFragment$15;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/FacePageFragment$15;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/FacePageFragment$15;

    .prologue
    .line 617
    iput-object p1, p0, Lcom/miui/gallery/ui/FacePageFragment$15$1;->this$1:Lcom/miui/gallery/ui/FacePageFragment$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 620
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment$15$1;->this$1:Lcom/miui/gallery/ui/FacePageFragment$15;

    iget-object v0, v0, Lcom/miui/gallery/ui/FacePageFragment$15;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/FacePageFragment;->changeToNextPage()V

    .line 621
    return-void
.end method
