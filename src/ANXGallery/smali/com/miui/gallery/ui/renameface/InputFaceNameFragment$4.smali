.class Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$4;
.super Ljava/lang/Object;
.source "InputFaceNameFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->initEditText()V
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
    .line 230
    iput-object p1, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$4;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$4;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->access$802(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;Z)Z

    .line 244
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$4;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->updateNameList()V

    .line 245
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 239
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 234
    return-void
.end method
