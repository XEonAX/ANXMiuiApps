.class Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$1;
.super Ljava/lang/Object;
.source "InputFaceNameFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->initTitleBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$1;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$1;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->access$000(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)V

    .line 168
    return-void
.end method
