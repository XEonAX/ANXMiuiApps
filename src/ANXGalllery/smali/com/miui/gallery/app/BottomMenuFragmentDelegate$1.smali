.class Lcom/miui/gallery/app/BottomMenuFragmentDelegate$1;
.super Ljava/lang/Object;
.source "BottomMenuFragmentDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/BottomMenuFragmentDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/BottomMenuFragmentDelegate;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/BottomMenuFragmentDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/app/BottomMenuFragmentDelegate;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate$1;->this$0:Lcom/miui/gallery/app/BottomMenuFragmentDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 35
    const/4 v0, 0x1

    .line 36
    .local v0, "show":Z
    iget-object v1, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate$1;->this$0:Lcom/miui/gallery/app/BottomMenuFragmentDelegate;

    invoke-static {v1}, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->access$000(Lcom/miui/gallery/app/BottomMenuFragmentDelegate;)B

    move-result v1

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 37
    iget-object v1, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate$1;->this$0:Lcom/miui/gallery/app/BottomMenuFragmentDelegate;

    invoke-static {v1, v3}, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->access$102(Lcom/miui/gallery/app/BottomMenuFragmentDelegate;Lcom/miui/gallery/view/menu/MenuBuilder;)Lcom/miui/gallery/view/menu/MenuBuilder;

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate$1;->this$0:Lcom/miui/gallery/app/BottomMenuFragmentDelegate;

    invoke-static {v1}, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->access$100(Lcom/miui/gallery/app/BottomMenuFragmentDelegate;)Lcom/miui/gallery/view/menu/MenuBuilder;

    move-result-object v1

    if-nez v1, :cond_1

    .line 41
    iget-object v1, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate$1;->this$0:Lcom/miui/gallery/app/BottomMenuFragmentDelegate;

    iget-object v2, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate$1;->this$0:Lcom/miui/gallery/app/BottomMenuFragmentDelegate;

    invoke-virtual {v2}, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->createMenu()Lcom/miui/gallery/view/menu/MenuBuilder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->access$102(Lcom/miui/gallery/app/BottomMenuFragmentDelegate;Lcom/miui/gallery/view/menu/MenuBuilder;)Lcom/miui/gallery/view/menu/MenuBuilder;

    .line 42
    iget-object v1, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate$1;->this$0:Lcom/miui/gallery/app/BottomMenuFragmentDelegate;

    iget-object v2, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate$1;->this$0:Lcom/miui/gallery/app/BottomMenuFragmentDelegate;

    invoke-static {v2}, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->access$100(Lcom/miui/gallery/app/BottomMenuFragmentDelegate;)Lcom/miui/gallery/view/menu/MenuBuilder;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    .line 45
    :cond_1
    if-eqz v0, :cond_2

    .line 46
    iget-object v1, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate$1;->this$0:Lcom/miui/gallery/app/BottomMenuFragmentDelegate;

    iget-object v2, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate$1;->this$0:Lcom/miui/gallery/app/BottomMenuFragmentDelegate;

    invoke-static {v2}, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->access$100(Lcom/miui/gallery/app/BottomMenuFragmentDelegate;)Lcom/miui/gallery/view/menu/MenuBuilder;

    move-result-object v2

    invoke-virtual {v1, v4, v3, v2}, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 49
    :cond_2
    if-eqz v0, :cond_3

    .line 50
    iget-object v1, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate$1;->this$0:Lcom/miui/gallery/app/BottomMenuFragmentDelegate;

    iget-object v2, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate$1;->this$0:Lcom/miui/gallery/app/BottomMenuFragmentDelegate;

    invoke-static {v2}, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->access$100(Lcom/miui/gallery/app/BottomMenuFragmentDelegate;)Lcom/miui/gallery/view/menu/MenuBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->setMenu(Lcom/miui/gallery/view/menu/MenuBuilder;)V

    .line 56
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate$1;->this$0:Lcom/miui/gallery/app/BottomMenuFragmentDelegate;

    iget-object v2, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate$1;->this$0:Lcom/miui/gallery/app/BottomMenuFragmentDelegate;

    invoke-static {v2}, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->access$000(Lcom/miui/gallery/app/BottomMenuFragmentDelegate;)B

    move-result v2

    and-int/lit8 v2, v2, -0x12

    int-to-byte v2, v2

    invoke-static {v1, v2}, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->access$002(Lcom/miui/gallery/app/BottomMenuFragmentDelegate;B)B

    .line 57
    return-void

    .line 52
    :cond_3
    iget-object v1, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate$1;->this$0:Lcom/miui/gallery/app/BottomMenuFragmentDelegate;

    invoke-virtual {v1, v3}, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->setMenu(Lcom/miui/gallery/view/menu/MenuBuilder;)V

    .line 53
    iget-object v1, p0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate$1;->this$0:Lcom/miui/gallery/app/BottomMenuFragmentDelegate;

    invoke-static {v1, v3}, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->access$102(Lcom/miui/gallery/app/BottomMenuFragmentDelegate;Lcom/miui/gallery/view/menu/MenuBuilder;)Lcom/miui/gallery/view/menu/MenuBuilder;

    goto :goto_0
.end method
