.class Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager$ActionBarDividerRunnable;
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
    name = "ActionBarDividerRunnable"
.end annotation


# instance fields
.field final isShowBottomDivider:Z

.field final isShowTopDivider:Z

.field final synthetic this$1:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;ZZ)V
    .locals 0
    .param p2, "showTopDivider"    # Z
    .param p3, "showBottomDivider"    # Z

    .prologue
    .line 976
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager$ActionBarDividerRunnable;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 977
    iput-boolean p2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager$ActionBarDividerRunnable;->isShowTopDivider:Z

    .line 978
    iput-boolean p3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager$ActionBarDividerRunnable;->isShowBottomDivider:Z

    .line 979
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 983
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager$ActionBarDividerRunnable;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->access$1200(Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;)Lcom/miui/gallery/ui/PhotoPageMaskView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager$ActionBarDividerRunnable;->isShowTopDivider:Z

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPageMaskView;->setActionBarDividerVisible(Z)Z

    .line 984
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager$ActionBarDividerRunnable;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->access$1200(Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;)Lcom/miui/gallery/ui/PhotoPageMaskView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager$ActionBarDividerRunnable;->isShowBottomDivider:Z

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPageMaskView;->setSplitBarDividerVisible(Z)Z

    .line 985
    return-void
.end method
