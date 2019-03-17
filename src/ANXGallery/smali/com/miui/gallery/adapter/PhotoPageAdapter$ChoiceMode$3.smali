.class Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode$3;
.super Ljava/lang/Object;
.source "PhotoPageAdapter.java"

# interfaces
.implements Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->getRenderIInstance()Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;


# direct methods
.method constructor <init>(Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    .prologue
    .line 616
    iput-object p1, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode$3;->this$0:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isChecked(J)Z
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 629
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode$3;->this$0:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    invoke-static {v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->access$600(Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;)Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;->isCheckedId(J)Z

    move-result v0

    return v0
.end method

.method public onItemCheckedChanged(IJZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "id"    # J
    .param p4, "checked"    # Z

    .prologue
    .line 619
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode$3;->this$0:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    invoke-static {v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->access$600(Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;)Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;->setChecked(IJZ)V

    .line 620
    return-void
.end method

.method public setChecked(IJZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "id"    # J
    .param p4, "checked"    # Z

    .prologue
    .line 624
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode$3;->this$0:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    invoke-static {v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->access$600(Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;)Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;->setChecked(IJZ)V

    .line 625
    return-void
.end method
