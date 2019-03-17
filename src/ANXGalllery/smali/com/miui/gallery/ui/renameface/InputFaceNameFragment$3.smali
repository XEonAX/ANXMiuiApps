.class Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$3;
.super Ljava/lang/Object;
.source "InputFaceNameFragment.java"

# interfaces
.implements Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment$RelationSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->showSetRelationDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$phone:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$3;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    iput-object p2, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$3;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$3;->val$phone:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRelationSelected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "relation"    # Ljava/lang/String;
    .param p2, "relationText"    # Ljava/lang/String;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$3;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    iget-object v1, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$3;->val$name:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$3;->val$phone:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->access$700(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method
