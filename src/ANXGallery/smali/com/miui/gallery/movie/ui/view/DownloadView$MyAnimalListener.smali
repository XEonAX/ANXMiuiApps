.class abstract Lcom/miui/gallery/movie/ui/view/DownloadView$MyAnimalListener;
.super Ljava/lang/Object;
.source "DownloadView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/movie/ui/view/DownloadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "MyAnimalListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/movie/ui/view/DownloadView;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/movie/ui/view/DownloadView;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/view/DownloadView$MyAnimalListener;->this$0:Lcom/miui/gallery/movie/ui/view/DownloadView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/movie/ui/view/DownloadView;Lcom/miui/gallery/movie/ui/view/DownloadView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/movie/ui/view/DownloadView;
    .param p2, "x1"    # Lcom/miui/gallery/movie/ui/view/DownloadView$1;

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/miui/gallery/movie/ui/view/DownloadView$MyAnimalListener;-><init>(Lcom/miui/gallery/movie/ui/view/DownloadView;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 151
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 155
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 147
    return-void
.end method
