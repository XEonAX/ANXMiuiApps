.class Lcom/miui/gallery/ui/PhotoSlimFragment$2;
.super Ljava/lang/Object;
.source "PhotoSlimFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoSlimFragment;
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
    .line 142
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoSlimFragment$2;->this$0:Lcom/miui/gallery/ui/PhotoSlimFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoSlimFragment$2;->this$0:Lcom/miui/gallery/ui/PhotoSlimFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoSlimFragment;->onBackPressed()Z

    .line 147
    return-void
.end method
