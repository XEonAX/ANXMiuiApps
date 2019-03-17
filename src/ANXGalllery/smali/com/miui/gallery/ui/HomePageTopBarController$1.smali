.class Lcom/miui/gallery/ui/HomePageTopBarController$1;
.super Ljava/lang/Object;
.source "HomePageTopBarController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/HomePageTopBarController;-><init>(Landroid/app/Activity;Lcom/miui/gallery/widget/TwoStageDrawer;I)V
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
    .line 38
    iput-object p1, p0, Lcom/miui/gallery/ui/HomePageTopBarController$1;->this$0:Lcom/miui/gallery/ui/HomePageTopBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageTopBarController$1;->this$0:Lcom/miui/gallery/ui/HomePageTopBarController;

    invoke-static {v0}, Lcom/miui/gallery/ui/HomePageTopBarController;->access$000(Lcom/miui/gallery/ui/HomePageTopBarController;)Lcom/miui/gallery/widget/TwoStageDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/widget/TwoStageDrawer;->halfOpenDrawer()V

    .line 42
    return-void
.end method
