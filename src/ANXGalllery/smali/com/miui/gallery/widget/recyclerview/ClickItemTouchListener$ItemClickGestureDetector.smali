.class Lcom/miui/gallery/widget/recyclerview/ClickItemTouchListener$ItemClickGestureDetector;
.super Ljava/lang/Object;
.source "ClickItemTouchListener.java"

# interfaces
.implements Lcom/miui/gallery/widget/recyclerview/ClickItemTouchListener$GestureDetectorHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/recyclerview/ClickItemTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemClickGestureDetector"
.end annotation


# instance fields
.field private mGestureDetectorCompat:Landroid/support/v4/view/GestureDetectorCompat;

.field private final mGestureListener:Lcom/miui/gallery/widget/recyclerview/ClickItemTouchListener$ItemClickGestureListener;

.field final synthetic this$0:Lcom/miui/gallery/widget/recyclerview/ClickItemTouchListener;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/widget/recyclerview/ClickItemTouchListener;Landroid/content/Context;Lcom/miui/gallery/widget/recyclerview/ClickItemTouchListener$ItemClickGestureListener;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Lcom/miui/gallery/widget/recyclerview/ClickItemTouchListener$ItemClickGestureListener;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/miui/gallery/widget/recyclerview/ClickItemTouchListener$ItemClickGestureDetector;->this$0:Lcom/miui/gallery/widget/recyclerview/ClickItemTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/support/v4/view/GestureDetectorCompat;

    invoke-direct {v0, p2, p3}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ClickItemTouchListener$ItemClickGestureDetector;->mGestureDetectorCompat:Landroid/support/v4/view/GestureDetectorCompat;

    .line 64
    iput-object p3, p0, Lcom/miui/gallery/widget/recyclerview/ClickItemTouchListener$ItemClickGestureDetector;->mGestureListener:Lcom/miui/gallery/widget/recyclerview/ClickItemTouchListener$ItemClickGestureListener;

    .line 65
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 69
    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/ClickItemTouchListener$ItemClickGestureDetector;->mGestureDetectorCompat:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {v1, p1}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 71
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 79
    :goto_0
    :pswitch_0
    return v0

    .line 73
    :pswitch_1
    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/ClickItemTouchListener$ItemClickGestureDetector;->mGestureListener:Lcom/miui/gallery/widget/recyclerview/ClickItemTouchListener$ItemClickGestureListener;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/widget/recyclerview/ClickItemTouchListener$ItemClickGestureListener;->dispatchSingleTapUpIfNeeded(Landroid/view/MotionEvent;)V

    .line 75
    :pswitch_2
    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/ClickItemTouchListener$ItemClickGestureDetector;->mGestureListener:Lcom/miui/gallery/widget/recyclerview/ClickItemTouchListener$ItemClickGestureListener;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/widget/recyclerview/ClickItemTouchListener$ItemClickGestureListener;->dispatchResetPressState(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
