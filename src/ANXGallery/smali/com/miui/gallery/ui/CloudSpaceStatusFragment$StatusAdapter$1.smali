.class Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter$1;
.super Ljava/lang/Object;
.source "CloudSpaceStatusFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter$1;->this$1:Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 324
    const/4 v0, 0x1

    return v0
.end method
