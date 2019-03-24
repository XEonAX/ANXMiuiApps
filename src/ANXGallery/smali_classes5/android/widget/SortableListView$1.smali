.class Landroid/widget/SortableListView$1;
.super Ljava/lang/Object;
.source "SortableListView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SortableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SortableListView;


# direct methods
.method constructor <init>(Landroid/widget/SortableListView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/SortableListView;

    .line 73
    iput-object p1, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 76
    iget-object v0, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-static {v0}, Landroid/widget/SortableListView;->access$000(Landroid/widget/SortableListView;)Landroid/widget/SortableListView$OnOrderChangedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_1

    .line 78
    iget-object v0, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-static {v0, p2}, Landroid/widget/SortableListView;->access$100(Landroid/widget/SortableListView;Landroid/view/MotionEvent;)I

    move-result v0

    .line 79
    .local v0, "position":I
    if-ltz v0, :cond_1

    .line 81
    iget-object v1, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-static {v1, v0}, Landroid/widget/SortableListView;->access$202(Landroid/widget/SortableListView;I)I

    .line 82
    iget-object v1, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-static {v1, v0}, Landroid/widget/SortableListView;->access$302(Landroid/widget/SortableListView;I)I

    .line 83
    iget-object v1, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/widget/SortableListView;->access$402(Landroid/widget/SortableListView;Z)Z

    .line 86
    iget-object v1, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    iget-object v3, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-virtual {v3}, Landroid/widget/SortableListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {v1, v3}, Landroid/widget/SortableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 87
    .local v1, "view":Landroid/view/View;
    iget-object v3, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-static {v3, v4}, Landroid/widget/SortableListView;->access$502(Landroid/widget/SortableListView;I)I

    .line 88
    iget-object v3, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Landroid/widget/SortableListView;->access$602(Landroid/widget/SortableListView;I)I

    .line 91
    iget-object v3, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    iget-object v4, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-static {v4}, Landroid/widget/SortableListView;->access$700(Landroid/widget/SortableListView;)[I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SortableListView;->getLocationOnScreen([I)V

    .line 92
    iget-object v3, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-static {v5}, Landroid/widget/SortableListView;->access$700(Landroid/widget/SortableListView;)[I

    move-result-object v5

    aget v2, v5, v2

    sub-int/2addr v4, v2

    invoke-static {v3, v4}, Landroid/widget/SortableListView;->access$802(Landroid/widget/SortableListView;I)I

    .line 93
    iget-object v2, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    iget-object v3, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-static {v3}, Landroid/widget/SortableListView;->access$800(Landroid/widget/SortableListView;)I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Landroid/widget/SortableListView;->access$902(Landroid/widget/SortableListView;I)I

    .line 96
    iget-object v2, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    .line 97
    invoke-static {v2}, Landroid/widget/SortableListView;->access$500(Landroid/widget/SortableListView;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    .line 98
    invoke-static {v3}, Landroid/widget/SortableListView;->access$600(Landroid/widget/SortableListView;)I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 96
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 100
    .local v2, "snapshot":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 101
    .local v3, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 102
    iget-object v4, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-virtual {v6}, Landroid/widget/SortableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v4, v5}, Landroid/widget/SortableListView;->access$1002(Landroid/widget/SortableListView;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    .line 103
    iget-object v4, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-static {v4}, Landroid/widget/SortableListView;->access$1000(Landroid/widget/SortableListView;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    const/16 v5, 0x99

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 104
    iget-object v4, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-static {v4}, Landroid/widget/SortableListView;->access$1000(Landroid/widget/SortableListView;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    .line 105
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 107
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v7

    iget-object v8, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    .line 108
    invoke-static {v8}, Landroid/widget/SortableListView;->access$600(Landroid/widget/SortableListView;)I

    move-result v8

    .line 104
    const/4 v9, 0x0

    invoke-virtual {v4, v6, v9, v7, v8}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 110
    iget-object v4, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-static {v4}, Landroid/widget/SortableListView;->access$1100(Landroid/widget/SortableListView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 111
    iget-object v4, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-static {v4}, Landroid/widget/SortableListView;->access$1100(Landroid/widget/SortableListView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 112
    iget-object v4, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-static {v4}, Landroid/widget/SortableListView;->access$1100(Landroid/widget/SortableListView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 113
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 115
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v6

    iget-object v7, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    .line 116
    invoke-static {v7}, Landroid/widget/SortableListView;->access$600(Landroid/widget/SortableListView;)I

    move-result v7

    .line 112
    invoke-virtual {v4, v5, v9, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 120
    :cond_0
    iget-object v4, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-static {v4}, Landroid/widget/SortableListView;->access$1400(Landroid/widget/SortableListView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 121
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    iget-object v6, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    .line 122
    invoke-static {v6}, Landroid/widget/SortableListView;->access$1200(Landroid/widget/SortableListView;)I

    move-result v6

    neg-int v6, v6

    .line 123
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v7

    iget-object v8, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    .line 124
    invoke-static {v8}, Landroid/widget/SortableListView;->access$600(Landroid/widget/SortableListView;)I

    move-result v8

    iget-object v10, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-static {v10}, Landroid/widget/SortableListView;->access$1300(Landroid/widget/SortableListView;)I

    move-result v10

    add-int/2addr v8, v10

    .line 120
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 127
    iget-object v4, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    iget-object v5, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-static {v5}, Landroid/widget/SortableListView;->access$500(Landroid/widget/SortableListView;)I

    move-result v5

    iget-object v6, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-static {v6}, Landroid/widget/SortableListView;->access$500(Landroid/widget/SortableListView;)I

    move-result v6

    invoke-static {v4, v5, v6, v9, v9}, Landroid/widget/SortableListView;->access$1500(Landroid/widget/SortableListView;IIII)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 130
    .end local v0    # "position":I
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "snapshot":Landroid/graphics/Bitmap;
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    :cond_1
    iget-object v0, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-static {v0}, Landroid/widget/SortableListView;->access$400(Landroid/widget/SortableListView;)Z

    move-result v0

    return v0
.end method
