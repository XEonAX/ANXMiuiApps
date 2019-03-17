.class Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode$1;
.super Ljava/lang/Object;
.source "PhotoPageAdapter.java"

# interfaces
.implements Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->getOriginIInstance()Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;
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
    .line 558
    iput-object p1, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode$1;->this$0:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isChecked(J)Z
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 582
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode$1;->this$0:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    invoke-static {v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->access$400(Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;)Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;->isCheckedId(J)Z

    move-result v0

    return v0
.end method

.method public onItemCheckedChanged(IJZ)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "id"    # J
    .param p4, "checked"    # Z

    .prologue
    .line 562
    if-eqz p4, :cond_0

    .line 563
    iget-object v2, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode$1;->this$0:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    invoke-static {v2}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->access$200(Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;)Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;->setChecked(IJZ)V

    .line 565
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode$1;->this$0:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    invoke-static {v2}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->access$300(Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;)Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;->getCount()I

    move-result v0

    .line 566
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 567
    iget-object v2, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode$1;->this$0:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    invoke-static {v2}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->access$400(Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;)Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode$1;->this$0:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    invoke-static {v3}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->access$300(Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;)Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;->getItemKey(I)J

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5, p4}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;->setChecked(IJZ)V

    .line 566
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 569
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode$1;->this$0:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    invoke-static {v2}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->access$300(Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;)Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;->notifyCheckState()V

    .line 570
    iget-object v2, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode$1;->this$0:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    invoke-static {v2}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->access$500(Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;)Lcom/miui/gallery/adapter/PhotoPageAdapter$MultiChoiceModeListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 571
    iget-object v2, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode$1;->this$0:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    invoke-static {v2}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->access$500(Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;)Lcom/miui/gallery/adapter/PhotoPageAdapter$MultiChoiceModeListener;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/miui/gallery/adapter/PhotoPageAdapter$MultiChoiceModeListener;->onItemCheckedStateChanged(IJZ)V

    .line 573
    :cond_2
    return-void
.end method

.method public setChecked(IJZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "id"    # J
    .param p4, "checked"    # Z

    .prologue
    .line 577
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode$1;->this$0:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    invoke-static {v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->access$400(Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;)Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;->setChecked(IJZ)V

    .line 578
    return-void
.end method
