.class Lcom/miui/gallery/ui/HomePageTopBarController$2;
.super Ljava/lang/Object;
.source "HomePageTopBarController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/HomePageTopBarController;->delayShowPanelBar(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/HomePageTopBarController;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/HomePageTopBarController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/HomePageTopBarController;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/miui/gallery/ui/HomePageTopBarController$2;->this$0:Lcom/miui/gallery/ui/HomePageTopBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageTopBarController$2;->this$0:Lcom/miui/gallery/ui/HomePageTopBarController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/ui/HomePageTopBarController;->access$100(Lcom/miui/gallery/ui/HomePageTopBarController;ZLcom/miui/gallery/widget/TwoStageDrawer$DrawerAnimEndListener;)V

    .line 111
    return-void
.end method
