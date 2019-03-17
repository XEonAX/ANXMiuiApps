.class Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager$ActionBarMaskRunnable;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionBarMaskRunnable"
.end annotation


# instance fields
.field final isAnim:Z

.field final isShowMask:Z

.field final synthetic this$1:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;ZZ)V
    .locals 0
    .param p2, "isShowMask"    # Z
    .param p3, "isAnim"    # Z

    .prologue
    .line 992
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager$ActionBarMaskRunnable;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 993
    iput-boolean p2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager$ActionBarMaskRunnable;->isShowMask:Z

    .line 994
    iput-boolean p3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager$ActionBarMaskRunnable;->isAnim:Z

    .line 995
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 999
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager$ActionBarMaskRunnable;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->access$1200(Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;)Lcom/miui/gallery/ui/PhotoPageMaskView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager$ActionBarMaskRunnable;->isShowMask:Z

    iget-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager$ActionBarMaskRunnable;->isAnim:Z

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/PhotoPageMaskView;->setActionBarMaskVisible(ZZ)Z

    .line 1000
    return-void
.end method
