.class Lcom/miui/gallery/widget/TwoStageDrawer$1;
.super Ljava/lang/Object;
.source "TwoStageDrawer.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/TwoStageDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/widget/TwoStageDrawer;


# direct methods
.method constructor <init>(Lcom/miui/gallery/widget/TwoStageDrawer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/widget/TwoStageDrawer;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/miui/gallery/widget/TwoStageDrawer$1;->this$0:Lcom/miui/gallery/widget/TwoStageDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 208
    const/4 v0, 0x0

    .line 210
    .local v0, "layoutHeightChanged":Z
    iget-object v4, p0, Lcom/miui/gallery/widget/TwoStageDrawer$1;->this$0:Lcom/miui/gallery/widget/TwoStageDrawer;

    iget-object v7, p0, Lcom/miui/gallery/widget/TwoStageDrawer$1;->this$0:Lcom/miui/gallery/widget/TwoStageDrawer;

    invoke-static {v7}, Lcom/miui/gallery/widget/TwoStageDrawer;->access$000(Lcom/miui/gallery/widget/TwoStageDrawer;)Landroid/view/View;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/miui/gallery/widget/TwoStageDrawer;->access$100(Lcom/miui/gallery/widget/TwoStageDrawer;Landroid/view/View;)I

    move-result v1

    .line 211
    .local v1, "primaryContentHeight":I
    iget-object v4, p0, Lcom/miui/gallery/widget/TwoStageDrawer$1;->this$0:Lcom/miui/gallery/widget/TwoStageDrawer;

    invoke-static {v4}, Lcom/miui/gallery/widget/TwoStageDrawer;->access$200(Lcom/miui/gallery/widget/TwoStageDrawer;)I

    move-result v4

    if-eq v1, v4, :cond_0

    .line 212
    iget-object v7, p0, Lcom/miui/gallery/widget/TwoStageDrawer$1;->this$0:Lcom/miui/gallery/widget/TwoStageDrawer;

    iget-object v4, p0, Lcom/miui/gallery/widget/TwoStageDrawer$1;->this$0:Lcom/miui/gallery/widget/TwoStageDrawer;

    invoke-static {v4}, Lcom/miui/gallery/widget/TwoStageDrawer;->access$200(Lcom/miui/gallery/widget/TwoStageDrawer;)I

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v1, :cond_4

    move v4, v5

    :goto_0
    invoke-static {v7, v4}, Lcom/miui/gallery/widget/TwoStageDrawer;->access$302(Lcom/miui/gallery/widget/TwoStageDrawer;Z)Z

    .line 213
    iget-object v4, p0, Lcom/miui/gallery/widget/TwoStageDrawer$1;->this$0:Lcom/miui/gallery/widget/TwoStageDrawer;

    invoke-static {v4, v1}, Lcom/miui/gallery/widget/TwoStageDrawer;->access$202(Lcom/miui/gallery/widget/TwoStageDrawer;I)I

    .line 214
    const/4 v0, 0x1

    .line 217
    :cond_0
    iget-object v4, p0, Lcom/miui/gallery/widget/TwoStageDrawer$1;->this$0:Lcom/miui/gallery/widget/TwoStageDrawer;

    iget-object v7, p0, Lcom/miui/gallery/widget/TwoStageDrawer$1;->this$0:Lcom/miui/gallery/widget/TwoStageDrawer;

    invoke-static {v7}, Lcom/miui/gallery/widget/TwoStageDrawer;->access$400(Lcom/miui/gallery/widget/TwoStageDrawer;)Landroid/view/View;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/miui/gallery/widget/TwoStageDrawer;->access$100(Lcom/miui/gallery/widget/TwoStageDrawer;Landroid/view/View;)I

    move-result v2

    .line 218
    .local v2, "secondaryContentHeight":I
    iget-object v4, p0, Lcom/miui/gallery/widget/TwoStageDrawer$1;->this$0:Lcom/miui/gallery/widget/TwoStageDrawer;

    invoke-static {v4}, Lcom/miui/gallery/widget/TwoStageDrawer;->access$500(Lcom/miui/gallery/widget/TwoStageDrawer;)I

    move-result v4

    if-eq v2, v4, :cond_1

    .line 219
    iget-object v7, p0, Lcom/miui/gallery/widget/TwoStageDrawer$1;->this$0:Lcom/miui/gallery/widget/TwoStageDrawer;

    iget-object v4, p0, Lcom/miui/gallery/widget/TwoStageDrawer$1;->this$0:Lcom/miui/gallery/widget/TwoStageDrawer;

    invoke-static {v4}, Lcom/miui/gallery/widget/TwoStageDrawer;->access$500(Lcom/miui/gallery/widget/TwoStageDrawer;)I

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v2, :cond_5

    move v4, v5

    :goto_1
    invoke-static {v7, v4}, Lcom/miui/gallery/widget/TwoStageDrawer;->access$602(Lcom/miui/gallery/widget/TwoStageDrawer;Z)Z

    .line 220
    iget-object v4, p0, Lcom/miui/gallery/widget/TwoStageDrawer$1;->this$0:Lcom/miui/gallery/widget/TwoStageDrawer;

    invoke-static {v4, v2}, Lcom/miui/gallery/widget/TwoStageDrawer;->access$502(Lcom/miui/gallery/widget/TwoStageDrawer;I)I

    .line 221
    const/4 v0, 0x1

    .line 224
    :cond_1
    iget-object v4, p0, Lcom/miui/gallery/widget/TwoStageDrawer$1;->this$0:Lcom/miui/gallery/widget/TwoStageDrawer;

    iget-object v7, p0, Lcom/miui/gallery/widget/TwoStageDrawer$1;->this$0:Lcom/miui/gallery/widget/TwoStageDrawer;

    invoke-static {v7}, Lcom/miui/gallery/widget/TwoStageDrawer;->access$700(Lcom/miui/gallery/widget/TwoStageDrawer;)Landroid/view/View;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/miui/gallery/widget/TwoStageDrawer;->access$100(Lcom/miui/gallery/widget/TwoStageDrawer;Landroid/view/View;)I

    move-result v3

    .line 225
    .local v3, "triggerViewHeight":I
    iget-object v4, p0, Lcom/miui/gallery/widget/TwoStageDrawer$1;->this$0:Lcom/miui/gallery/widget/TwoStageDrawer;

    invoke-static {v4}, Lcom/miui/gallery/widget/TwoStageDrawer;->access$800(Lcom/miui/gallery/widget/TwoStageDrawer;)I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 226
    iget-object v4, p0, Lcom/miui/gallery/widget/TwoStageDrawer$1;->this$0:Lcom/miui/gallery/widget/TwoStageDrawer;

    invoke-static {v4, v3}, Lcom/miui/gallery/widget/TwoStageDrawer;->access$802(Lcom/miui/gallery/widget/TwoStageDrawer;I)I

    .line 227
    const/4 v0, 0x1

    .line 230
    :cond_2
    if-eqz v0, :cond_3

    .line 231
    iget-object v4, p0, Lcom/miui/gallery/widget/TwoStageDrawer$1;->this$0:Lcom/miui/gallery/widget/TwoStageDrawer;

    invoke-static {v4}, Lcom/miui/gallery/widget/TwoStageDrawer;->access$900(Lcom/miui/gallery/widget/TwoStageDrawer;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 232
    iget-object v4, p0, Lcom/miui/gallery/widget/TwoStageDrawer$1;->this$0:Lcom/miui/gallery/widget/TwoStageDrawer;

    invoke-static {v4, v6}, Lcom/miui/gallery/widget/TwoStageDrawer;->access$902(Lcom/miui/gallery/widget/TwoStageDrawer;Z)Z

    .line 233
    iget-object v4, p0, Lcom/miui/gallery/widget/TwoStageDrawer$1;->this$0:Lcom/miui/gallery/widget/TwoStageDrawer;

    invoke-static {v4}, Lcom/miui/gallery/widget/TwoStageDrawer;->access$1000(Lcom/miui/gallery/widget/TwoStageDrawer;)V

    .line 240
    :cond_3
    :goto_2
    return-void

    .end local v2    # "secondaryContentHeight":I
    .end local v3    # "triggerViewHeight":I
    :cond_4
    move v4, v6

    .line 212
    goto :goto_0

    .restart local v2    # "secondaryContentHeight":I
    :cond_5
    move v4, v6

    .line 219
    goto :goto_1

    .line 234
    .restart local v3    # "triggerViewHeight":I
    :cond_6
    iget-object v4, p0, Lcom/miui/gallery/widget/TwoStageDrawer$1;->this$0:Lcom/miui/gallery/widget/TwoStageDrawer;

    invoke-static {v4}, Lcom/miui/gallery/widget/TwoStageDrawer;->access$1100(Lcom/miui/gallery/widget/TwoStageDrawer;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 235
    iget-object v4, p0, Lcom/miui/gallery/widget/TwoStageDrawer$1;->this$0:Lcom/miui/gallery/widget/TwoStageDrawer;

    invoke-static {v4, v5}, Lcom/miui/gallery/widget/TwoStageDrawer;->access$1202(Lcom/miui/gallery/widget/TwoStageDrawer;Z)Z

    goto :goto_2

    .line 237
    :cond_7
    iget-object v4, p0, Lcom/miui/gallery/widget/TwoStageDrawer$1;->this$0:Lcom/miui/gallery/widget/TwoStageDrawer;

    invoke-static {v4}, Lcom/miui/gallery/widget/TwoStageDrawer;->access$1300(Lcom/miui/gallery/widget/TwoStageDrawer;)V

    goto :goto_2
.end method
